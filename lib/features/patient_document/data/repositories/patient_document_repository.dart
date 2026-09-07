import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../domain/entities/patient_document_entity.dart';
import '../../domain/repositories/i_patient_document_repository.dart';
import '../datasources/i_remote_patient_document_data_source.dart';
import '../mappers/patient_document_mapper.dart';

@LazySingleton(as: IPatientDocumentRepository)
class PatientDocumentRepository implements IPatientDocumentRepository {
  PatientDocumentRepository({required this._remoteDatasource});

  final IRemotePatientDocumentDataSource _remoteDatasource;

  @override
  Future<PageChunk<PatientDocumentEntity, int>> getDocuments({
    required int page,
    int? patientId,
  }) async {
    final chunk = await _remoteDatasource.getDocuments(
      page: page,
      patientId: patientId,
    );
    return PageChunk<PatientDocumentEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<PatientDocumentEntity> getDocumentById(int id) async {
    final model = await _remoteDatasource.getDocumentById(id);
    return model.toDomain();
  }

  @override
  Future<void> deleteDocument(int id) =>
      _remoteDatasource.deleteDocument(id);

  @override
  Future<PatientDocumentEntity> uploadDocument(
    UploadDocumentParams params,
  ) async {
    final model = await _remoteDatasource.uploadDocument(
      patientId: params.patientId,
      documentType: params.documentType,
      filePath: params.filePath,
      description: params.description,
    );
    return model.toDomain();
  }
}
