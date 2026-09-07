import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/material_transaction_model.dart';
import 'i_remote_material_transaction_data_source.dart';

/// Real transaction API implementation (authenticated [DioClient]).
@LazySingleton(
  as: IRemoteMaterialTransactionDataSource,
  env: [AppEnvironment.prod],
)
class MaterialTransactionRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteMaterialTransactionDataSource {
  MaterialTransactionRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<PageChunk<MaterialTransactionModel, int>> getTransactions({
    required int page,
  }) async {
    final response = await get(
      'material-transactions/',
      queryParameters: {'page': page},
    );
    return parsePage(
      response.data,
      MaterialTransactionModel.fromJson,
      page: page,
    );
  }

  @override
  Future<MaterialTransactionModel> getTransactionById(int id) async {
    final response = await get('material-transactions/$id/');
    return MaterialTransactionModel.fromJson(
      _asMap(response.data, 'material-transactions/$id/'),
    );
  }

  @override
  Future<Map<String, dynamic>> createTransaction(
    Map<String, dynamic> body,
  ) async {
    // Verified live: 201 echo (no id).
    final response = await post('material-transactions/', data: body);
    return _asMap(response.data, 'material-transactions/ [POST]');
  }

  @override
  Future<void> updateTransaction(int id, Map<String, dynamic> body) async {
    await patch('material-transactions/$id/', data: body);
  }

  @override
  Future<void> deleteTransaction(int id) async {
    await delete('material-transactions/$id/');
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
