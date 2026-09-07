import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/patient_document/data/datasources/i_remote_patient_document_data_source.dart';
import 'package:san_dent/features/patient_document/data/mappers/patient_document_mapper.dart';
import 'package:san_dent/features/patient_document/data/models/patient_document_model.dart';
import 'package:san_dent/features/patient_document/data/repositories/patient_document_repository.dart';
import 'package:san_dent/features/patient_document/domain/repositories/i_patient_document_repository.dart';
import 'package:san_dent/features/patient_document/domain/usecases/get_patient_document_by_id_usecase.dart';
import 'package:san_dent/features/patient_document/domain/usecases/get_patient_document_usecase.dart';
import 'package:san_dent/features/patient_document/domain/usecases/patient_document_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Contract shape (swagger `PatientDocument` + live OPTIONS/validation;
/// object itself UNVERIFIED — the server list is empty).
const _docJson = <String, dynamic>{
  'id': 1,
  'patient': 4,
  'document_type': 'xray',
  'document_type_display': 'Рентген',
  'file': null,
  'file_url': null,
  'description': 'probe',
  'uploaded_at': null,
};

class FakeRemote implements IRemotePatientDocumentDataSource {
  List<PatientDocumentModel> items = [PatientDocumentModel.fromJson(_docJson)];
  int? lastPatientFilter;

  @override
  Future<PageChunk<PatientDocumentModel, int>> getDocuments({
    required int page,
    int? patientId,
  }) async {
    lastPatientFilter = patientId;
    final filtered = patientId == null
        ? items
        : items.where((d) => d.patient == patientId).toList();
    return PageChunk(items: filtered, nextCursor: null, hasMore: false);
  }

  @override
  Future<PatientDocumentModel> getDocumentById(int id) async =>
      items.firstWhere(
        (d) => d.id == id,
        orElse: () => throw StateError('missing $id'),
      );

  @override
  Future<void> deleteDocument(int id) async {
    items = items.where((d) => d.id != id).toList();
  }

  @override
  Future<PatientDocumentModel> uploadDocument({
    required int patientId,
    required String documentType,
    required String filePath,
    String? description,
  }) async => PatientDocumentModel(
    id: 2,
    patient: patientId,
    document_type: documentType,
    document_type_display: null,
    file: null,
    file_url: null,
    description: description,
    uploaded_at: null,
  );
}

void main() {
  late FakeRemote remote;
  late PatientDocumentRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = PatientDocumentRepository(remoteDatasource: remote);
  });

  test('PatientDocumentMapper maps snake_case to camelCase', () {
    final entity = PatientDocumentModel.fromJson(_docJson).toDomain();

    expect(entity.id, 1);
    expect(entity.patient, 4);
    expect(entity.documentType, 'xray');
    expect(entity.documentTypeDisplay, 'Рентген');
    expect(entity.uploadedAt, isNull);
  });

  test('GetPatientDocumentUseCase forwards the patient filter', () async {
    final useCase = GetPatientDocumentUseCase(
      _logger(),
      repository: repository,
    );

    final result = await useCase(
      const PatientDocumentsPageParams(page: 1, patientId: 4),
    );

    expect(remote.lastPatientFilter, 4);
    expect(result.dataOrThrow().items.length, 1);
  });

  test('GetPatientDocumentByIdUseCase returns the document', () async {
    final useCase = GetPatientDocumentByIdUseCase(
      _logger(),
      repository: repository,
    );

    final result = await useCase(1);

    expect(result.dataOrThrow().documentType, 'xray');
  });

  test('DeletePatientDocumentUseCase removes the item', () async {
    final useCase = DeletePatientDocumentUseCase(
      _logger(),
      repository: repository,
    );

    final result = await useCase(1);

    expect(result, isSuccess(null));
    expect(remote.items, isEmpty);
  });

  test('UploadPatientDocumentUseCase maps the created object', () async {
    final useCase = UploadPatientDocumentUseCase(
      _logger(),
      repository: repository,
    );

    final result = await useCase(
      const UploadDocumentParams(
        patientId: 4,
        documentType: 'xray',
        filePath: '/tmp/snap.png',
        description: 'probe',
      ),
    );

    final entity = result.dataOrThrow();
    expect(entity.patient, 4);
    expect(entity.description, 'probe');
  });
}
