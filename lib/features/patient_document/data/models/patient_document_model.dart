// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_document_model.freezed.dart';
part 'patient_document_model.g.dart';

/// Patient document — mirrors backend JSON keys 1:1 (snake_case).
/// Contract from swagger `PatientDocument` + live `OPTIONS` (director):
///
/// ```json
/// {"id": 1, "patient": 4, "document_type": "xray",
///  "document_type_display": "Рентген",
///  "file": "http://157.22.204.40/media/.../snap.png",
///  "file_url": "http://157.22.204.40/media/.../snap.png",
///  "description": "probe", "uploaded_at": "2026-09-07T10:00:00+0300"}
/// ```
///
/// Shape is swagger-only (UNVERIFIED — `GET patient-documents/` is empty on
/// the server; field names `patient`/`document_type`/`file` confirmed by live
/// 400 validation errors, the 10 `document_type` values by live OPTIONS).
/// Optionals are nullable: no real object was ever observed.
@freezed
abstract class PatientDocumentModel with _$PatientDocumentModel {
  const factory PatientDocumentModel({
    required int id,
    required int patient,
    required String document_type,
    required String? document_type_display,
    required String? file,
    required String? file_url,
    required String? description,
    required String? uploaded_at,
  }) = _PatientDocumentModel;

  factory PatientDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$PatientDocumentModelFromJson(json);
}
