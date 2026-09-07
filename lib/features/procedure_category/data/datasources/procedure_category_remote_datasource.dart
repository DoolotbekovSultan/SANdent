import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/procedure_category_model.dart';
import 'i_remote_procedure_category_data_source.dart';

/// Real category API implementation (authenticated [DioClient]).
@LazySingleton(
  as: IRemoteProcedureCategoryDataSource,
  env: [AppEnvironment.prod],
)
class ProcedureCategoryRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteProcedureCategoryDataSource {
  ProcedureCategoryRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<PageChunk<ProcedureCategoryModel, int>> getCategories({
    required int page,
  }) async {
    final response = await get(
      'procedure-categories/',
      queryParameters: {'page': page},
    );
    return parsePage(
      response.data,
      ProcedureCategoryModel.fromJson,
      page: page,
    );
  }

  @override
  Future<ProcedureCategoryModel> getCategoryById(int id) async {
    final response = await get('procedure-categories/$id/');
    return ProcedureCategoryModel.fromJson(
      _asMap(response.data, 'procedure-categories/$id/'),
    );
  }

  @override
  Future<Map<String, dynamic>> createCategory(
    Map<String, dynamic> body,
  ) async {
    final response = await post('procedure-categories/', data: body);
    return _asMap(response.data, 'procedure-categories/ [POST]');
  }

  @override
  Future<void> updateCategory(int id, Map<String, dynamic> body) async {
    await patch('procedure-categories/$id/', data: body);
  }

  @override
  Future<void> deleteCategory(int id) async {
    await delete('procedure-categories/$id/');
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
