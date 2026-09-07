import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/bulk_create_result_model.dart';
import '../models/procedure_model.dart';
import '../models/procedure_stats_model.dart';
import 'i_remote_procedure_data_source.dart';

/// Real procedure API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemoteProcedureDataSource, env: [AppEnvironment.prod])
class ProcedureRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteProcedureDataSource {
  ProcedureRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<PageChunk<ProcedureModel, int>> getProcedures({
    required int page,
    String? search,
  }) async {
    final response = await get(
      'procedures/',
      queryParameters: {
        'page': page,
        if (search != null && search.isNotEmpty) 'search': search,
      },
    );
    return parsePage(response.data, ProcedureModel.fromJson, page: page);
  }

  @override
  Future<ProcedureModel> getProcedureById(int id) async {
    final response = await get('procedures/$id/');
    return ProcedureModel.fromJson(
      _asMap(response.data, 'procedures/$id/'),
    );
  }

  @override
  Future<Map<String, dynamic>> createProcedure(
    Map<String, dynamic> body,
  ) async {
    // Verified live: 201 with an echo of the sent fields (no id).
    final response = await post('procedures/', data: body);
    return _asMap(response.data, 'procedures/ [POST]');
  }

  @override
  Future<void> updateProcedure(int id, Map<String, dynamic> body) async {
    // Verified live: 200 with an echo of the sent fields (no id).
    await patch('procedures/$id/', data: body);
  }

  @override
  Future<void> deleteProcedure(int id) async {
    await delete('procedures/$id/');
  }

  @override
  Future<BulkCreateResultModel> bulkCreateProcedures(
    List<Map<String, dynamic>> items,
  ) async {
    final response = await post('procedures/bulk_create/', data: items);
    return BulkCreateResultModel.fromJson(
      _asMap(response.data, 'procedures/bulk_create/'),
    );
  }

  @override
  Future<ProcedureStatsModel> getProcedureStats(int id) async {
    final response = await get('procedures/$id/stats/');
    return ProcedureStatsModel.fromJson(
      _asMap(response.data, 'procedures/$id/stats/'),
    );
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
