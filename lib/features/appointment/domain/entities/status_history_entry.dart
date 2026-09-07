import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_history_entry.freezed.dart';

/// Status-change record (domain).
@freezed
abstract class StatusHistoryEntry with _$StatusHistoryEntry {
  const factory StatusHistoryEntry({
    required int? id,
    required String status,
    required String? statusDisplay,
    required String? oldStatus,
    required int? changedBy,
    required String? changedByName,
    required String? note,
    required String? changedAt,
  }) = _StatusHistoryEntry;
}
