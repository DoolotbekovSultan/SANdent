import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/bulk_create_result_entity.dart';
import '../../domain/entities/procedure_entity.dart';
import '../../domain/entities/procedure_stats_entity.dart';
import '../../domain/parameters/procedure_params.dart';
import '../../domain/repositories/i_procedure_repository.dart';
import '../datasources/i_remote_procedure_data_source.dart';
import '../mappers/procedure_mapper.dart';
import '../models/requests/procedure_requests.dart';

@LazySingleton(as: IProcedureRepository)
class ProcedureRepository implements IProcedureRepository {
  ProcedureRepository({required this._remoteDatasource});

  final IRemoteProcedureDataSource _remoteDatasource;

  @override
  Future<PageChunk<ProcedureEntity, int>> getProcedures({
    required int page,
    String? search,
  }) async {
    final chunk = await _remoteDatasource.getProcedures(
      page: page,
      search: search,
    );
    return PageChunk<ProcedureEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<ProcedureEntity> getProcedureById(int id) async {
    final model = await _remoteDatasource.getProcedureById(id);
    return model.toDomain();
  }

  @override
  Future<ProcedureEntity> createProcedure(
    CreateProcedureParams params,
  ) async {
    await _remoteDatasource.createProcedure(_requestOf(params).toJson());
    // The create echo carries no id (verified live) — resolve via search.
    final found = await getProcedures(page: 1, search: params.name.trim());
    final match = found.items.where((e) => e.name == params.name.trim());
    if (match.isEmpty) {
      throw const Failure.parse(
        type: ParseFailure.schemaMismatch,
        field: 'name',
        message: 'Создана, но не найдена поиском — обновите список',
      );
    }
    return match.first;
  }

  @override
  Future<ProcedureEntity> updateProcedure(UpdateProcedureParams params) async {
    await _remoteDatasource.updateProcedure(
      params.id,
      UpdateProcedureRequest(
        name: params.name,
        code: params.code,
        categoryId: params.categoryId,
        description: params.description,
        price: params.price,
        durationMinutes: params.durationMinutes,
        isActive: params.isActive,
      ).toJson(),
    );
    // The PATCH echo carries no counters (verified live) — re-fetch.
    return getProcedureById(params.id);
  }

  @override
  Future<void> deleteProcedure(int id) =>
      _remoteDatasource.deleteProcedure(id);

  @override
  Future<BulkCreateResultEntity> bulkCreateProcedures(
    List<CreateProcedureParams> items,
  ) async {
    final result = await _remoteDatasource.bulkCreateProcedures(
      items.map((p) => _requestOf(p).toJson()).toList(),
    );
    return result.toDomain();
  }

  @override
  Future<ProcedureStatsEntity> getProcedureStats(int id) async {
    final model = await _remoteDatasource.getProcedureStats(id);
    return model.toDomain();
  }

  CreateProcedureRequest _requestOf(CreateProcedureParams p) =>
      CreateProcedureRequest(
        name: p.name.trim(),
        code: p.code,
        categoryId: p.categoryId,
        description: p.description,
        price: p.price,
        durationMinutes: p.durationMinutes,
        isActive: p.isActive,
      );
}
