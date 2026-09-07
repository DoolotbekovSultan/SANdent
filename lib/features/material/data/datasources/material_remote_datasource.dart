import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../../../material_transaction/data/models/material_transaction_model.dart';
import '../models/material_model.dart';
import 'i_remote_material_data_source.dart';

/// Real material API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemoteMaterialDataSource, env: [AppEnvironment.prod])
class MaterialRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteMaterialDataSource {
  MaterialRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<PageChunk<MaterialModel, int>> getMaterials({
    required int page,
    String? search,
  }) async {
    final response = await get(
      'materials/',
      queryParameters: {
        'page': page,
        if (search != null && search.isNotEmpty) 'search': search,
      },
    );
    return parsePage(response.data, MaterialModel.fromJson, page: page);
  }

  @override
  Future<MaterialModel> getMaterialById(int id) async {
    final response = await get('materials/$id/');
    return MaterialModel.fromJson(
      _asMap(response.data, 'materials/$id/'),
    );
  }

  @override
  Future<Map<String, dynamic>> createMaterial(
    Map<String, dynamic> body,
  ) async {
    // Verified live: 201 with an echo of the sent fields (no id).
    final response = await post('materials/', data: body);
    return _asMap(response.data, 'materials/ [POST]');
  }

  @override
  Future<void> updateMaterial(int id, Map<String, dynamic> body) async {
    // Verified live: 200 echo (PATCH semantics confirmed on description).
    await patch('materials/$id/', data: body);
  }

  @override
  Future<void> deleteMaterial(int id) async {
    await delete('materials/$id/');
  }

  @override
  Future<List<MaterialTransactionModel>> getTransactions(
    int materialId,
  ) async {
    // Verified live: bare array (200).
    final response = await get('materials/$materialId/transactions/');
    final data = response.data;
    if (data is! List) return const [];
    return data
        .whereType<Map>()
        .map((e) => MaterialTransactionModel.fromJson(
              Map<String, dynamic>.from(e),
            ))
        .toList();
  }

  @override
  Future<void> addStock(int materialId, String quantity) async {
    // NOTE: backend 500 on valid bodies (reported) — kept for post-fix.
    await post(
      'materials/$materialId/add_stock/',
      data: {'quantity': quantity},
    );
  }

  @override
  Future<void> subtractStock(int materialId, String quantity) async {
    // NOTE: backend 500 on valid bodies (reported) — kept for post-fix.
    await post(
      'materials/$materialId/subtract_stock/',
      data: {'quantity': quantity},
    );
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
