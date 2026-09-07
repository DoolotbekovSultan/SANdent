import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/material_transaction/data/datasources/i_remote_material_transaction_data_source.dart';
import 'package:san_dent/features/material_transaction/data/mappers/material_transaction_mapper.dart';
import 'package:san_dent/features/material_transaction/data/models/material_transaction_model.dart';
import 'package:san_dent/features/material_transaction/data/repositories/material_transaction_repository.dart';
import 'package:san_dent/features/material_transaction/domain/entities/material_transaction_entity.dart';
import 'package:san_dent/features/material_transaction/domain/parameters/material_transaction_params.dart';
import 'package:san_dent/features/material_transaction/domain/usecases/material_transaction_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Live `GET /materials/2/transactions/` item (director; probes cleaned).
const _txJson = <String, dynamic>{
  'id': 1,
  'material': 2,
  'material_name': 'Диагност',
  'transaction_type': 'income',
  'transaction_type_display': 'Поступление',
  'quantity': '5.00',
  'note': 'зонд',
  'created_by': 6,
  'created_by_name': 'test_director',
  'created_at': '2026-09-06T15:15:34+0300',
};

class FakeRemote implements IRemoteMaterialTransactionDataSource {
  final List<MaterialTransactionModel> items = [
    MaterialTransactionModel.fromJson(_txJson),
  ];

  @override
  Future<PageChunk<MaterialTransactionModel, int>> getTransactions({
    required int page,
  }) async => PageChunk(items: items, nextCursor: null, hasMore: false);

  @override
  Future<MaterialTransactionModel> getTransactionById(int id) async =>
      items.firstWhere(
        (t) => t.id == id,
        orElse: () => throw StateError('missing $id'),
      );

  @override
  Future<Map<String, dynamic>> createTransaction(
    Map<String, dynamic> body,
  ) async => body; // live echo: no id

  @override
  Future<void> updateTransaction(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteTransaction(int id) async {
    items.removeWhere((t) => t.id == id);
  }
}

void main() {
  late FakeRemote remote;
  late MaterialTransactionRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = MaterialTransactionRepository(remoteDatasource: remote);
  });

  group('MaterialTransactionMapper (live shape)', () {
    test('maps type, quantity, author', () {
      final entity = MaterialTransactionModel.fromJson(_txJson).toDomain();

      expect(entity.transactionType, TransactionType.income);
      expect(entity.quantity, '5.00');
      expect(entity.createdByName, 'test_director');
      expect(
        TransactionType.displayName(TransactionType.outcome),
        'Списание',
      );
    });
  });

  group('MaterialTransactionRepository', () {
    test('createTransaction completes (history reloaded by callers)', () async {
      final result = await CreateMaterialTransactionUseCase(
        _logger(),
        repository: repository,
      )(
        const CreateMaterialTransactionParams(
          materialId: 2,
          transactionType: TransactionType.income,
          quantity: '5.00',
        ),
      );

      expect(result, isSuccess(null));
    });

    test('deleteTransaction removes the item', () async {
      await repository.deleteTransaction(1);
      final chunk = await repository.getTransactions(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('Validation', () {
    test('quantity must be a positive number', () {
      expect(
        CreateMaterialTransactionParams.validateQuantity(''),
        isNotNull,
      );
      expect(
        CreateMaterialTransactionParams.validateQuantity('abc'),
        isNotNull,
      );
      expect(
        CreateMaterialTransactionParams.validateQuantity('-5'),
        isNotNull,
      );
      expect(
        CreateMaterialTransactionParams.validateQuantity('10.00'),
        isNull,
      );
      expect(
        CreateMaterialTransactionParams.validateQuantity('10,5'),
        isNull,
      );
      expect(
        CreateMaterialTransactionParams.validateType('bogus'),
        isNotNull,
      );
    });
  });
}
