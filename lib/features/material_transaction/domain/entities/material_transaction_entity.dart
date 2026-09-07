import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_transaction_entity.freezed.dart';

/// Stock transaction (domain).
@freezed
abstract class MaterialTransactionEntity with _$MaterialTransactionEntity {
  const factory MaterialTransactionEntity({
    required int id,
    required int materialId,
    required String? materialName,
    required String transactionType,
    required String? transactionTypeDisplay,
    required String quantity,
    required String? note,
    required int? createdBy,
    required String? createdByName,
    required String? createdAt,
  }) = _MaterialTransactionEntity;
}

/// Backend transaction types (`MaterialTransaction.transaction_type`).
abstract final class TransactionType {
  static const income = 'income';
  static const outcome = 'outcome';
  static const adjustment = 'adjustment';

  static const values = [income, outcome, adjustment];

  static String displayName(String type) => switch (type) {
    income => 'Поступление',
    outcome => 'Списание',
    adjustment => 'Корректировка',
    _ => type,
  };
}
