import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_document_entity.freezed.dart';

/// Patient document (domain).
@freezed
abstract class PatientDocumentEntity with _$PatientDocumentEntity {
  const factory PatientDocumentEntity({
    required int id,
    required int patient,
    required String documentType,
    required String? documentTypeDisplay,
    required String? file,
    required String? fileUrl,
    required String? description,
    required String? uploadedAt,
  }) = _PatientDocumentEntity;
}

/// Backend document types (`PatientDocument.document_type`).
///
/// The 10 values + RU labels verified via live `OPTIONS
/// patient-documents/` (director). UI prefers backend
/// `document_type_display`, falling back to [displayName].
abstract final class PatientDocumentType {
  static const passport = 'passport';
  static const policy = 'policy';
  static const snils = 'snils';
  static const inn = 'inn';
  static const medicalCard = 'medical_card';
  static const xray = 'xray';
  static const ct = 'ct';
  static const mri = 'mri';
  static const analysis = 'analysis';
  static const other = 'other';

  static const values = [
    passport,
    policy,
    snils,
    inn,
    medicalCard,
    xray,
    ct,
    mri,
    analysis,
    other,
  ];

  /// Russian fallback label (backend `document_type_display` preferred).
  static String displayName(String type) => switch (type) {
    passport => 'Паспорт',
    policy => 'Полис',
    snils => 'СНИЛС',
    inn => 'ИНН',
    medicalCard => 'Медицинская карта',
    xray => 'Рентген',
    ct => 'КТ',
    mri => 'МРТ',
    analysis => 'Анализ',
    other => 'Другое',
    _ => type,
  };
}
