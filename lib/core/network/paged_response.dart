import 'package:nexo/nexo_core.dart';

/// Shared parser for the backend's paginated shapes (F0 helper, landed in F2).
///
/// Verified live shapes:
/// - list endpoints (`GET /patients/`, `GET /appointments/`):
///   `{"count", "next", "previous", "results": [...]}` — note: swagger
///   claims `/patients/` returns a bare array; the real server paginates.
/// - search (`GET /patients/search/`): `{"query", "count", "results": [...]}`.
/// - some endpoints (e.g. `/users/doctors/` per swagger, unverified live):
///   a bare JSON array.
///
/// Any of the above becomes a single [PageChunk] with an `int` page cursor:
/// a bare array (or a page without `next`) yields one chunk with
/// `hasMore=false`. Exactly one parse path — no per-screen duplication.
PageChunk<T, int> parsePage<T>(
  dynamic data,
  T Function(Map<String, dynamic> json) fromJson, {
  required int page,
}) {
  if (data is List) {
    return PageChunk<T, int>(
      items: _itemsOf<T>(data, fromJson),
      nextCursor: null,
      hasMore: false,
    );
  }
  if (data is Map) {
    final map = Map<String, dynamic>.from(data);
    final results = map['results'];
    final next = map['next'];
    return PageChunk<T, int>(
      items: results is List ? _itemsOf<T>(results, fromJson) : const [],
      nextCursor: next != null ? page + 1 : null,
      hasMore: next != null,
    );
  }
  throw StateError('Expected a paged object or array, got $data');
}

List<T> _itemsOf<T>(
  List list,
  T Function(Map<String, dynamic> json) fromJson,
) {
  return list
      .whereType<Map>()
      .map((e) => fromJson(Map<String, dynamic>.from(e)))
      .toList();
}
