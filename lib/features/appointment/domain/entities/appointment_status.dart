/// Backend appointment statuses (`Appointment.status`).
///
/// Verified: the 6 values exist in swagger (`Appointment.status` enum).
/// NO live object was available (every `POST /appointments/` attempt returns
/// backend 500), so display strings fall back to this map when the backend
/// `status_display` is absent.
abstract final class AppointmentStatus {
  static const scheduled = 'scheduled';
  static const inProgress = 'in_progress';
  static const completed = 'completed';
  static const cancelled = 'cancelled';
  static const noShow = 'no_show';
  static const rescheduled = 'rescheduled';

  static const values = [
    scheduled,
    inProgress,
    completed,
    cancelled,
    noShow,
    rescheduled,
  ];

  /// Russian fallback label (backend `status_display` preferred in UI).
  static String displayName(String status) => switch (status) {
    scheduled => 'Запланирован',
    inProgress => 'Идёт приём',
    completed => 'Завершён',
    cancelled => 'Отменён',
    noShow => 'Не пришёл',
    rescheduled => 'Перенесён',
    _ => status,
  };
}
