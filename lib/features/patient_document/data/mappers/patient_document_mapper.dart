import '../models/patient_document_model.dart';
import '../../domain/entities/patient_document_entity.dart';

extension PatientDocumentMapper on PatientDocumentModel {
  PatientDocumentEntity toDomain() => PatientDocumentEntity(
    id: id,
    patient: patient,
    documentType: document_type,
    documentTypeDisplay: document_type_display,
    file: file,
    fileUrl: file_url,
    description: description,
    uploadedAt: uploaded_at,
  );
}

extension PatientDocumentListMapper on List<PatientDocumentModel> {
  List<PatientDocumentEntity> toDomain() => map((e) => e.toDomain()).toList();
}
