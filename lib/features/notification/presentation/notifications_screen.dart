import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/notification/domain/entities/notification_entity.dart';
import 'package:san_dent/features/notification/presentation/cubit/notification_cubit.dart';

/// Notifications inbox — screen created from ZERO ([UI-new], AGENTS.md):
/// no inbox design existed in the mock UI (only a static urgent-box on the
/// admin home). Visual language follows `PatientsScreen`/`ProceduresScreen`.
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<NotificationCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Уведомления',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: .w800,
            fontSize: 17,
            letterSpacing: 1.02,
            height: 1,
          ),
        ),
        actions: [
          TextButton(
            onPressed: cubit.markAllRead,
            child: const Text('Прочитать все'),
          ),
        ],
      ),
      body: NexoAsyncStateBuilder<List<NotificationEntity>>(
        state: cubit.state,
        loading: (_) => const NexoSkeletonList(itemCount: 5),
        success: (_, items) {
          if (items.isEmpty) {
            return const NexoEmptyView(
              title: 'Нет уведомлений',
              subtitle: 'Здесь появятся напоминания и новости клиники',
            );
          }
          return RefreshIndicator(
            onRefresh: () => cubit.refresh(),
            child: ListView.separated(
              padding: .symmetric(horizontal: 16, vertical: 16),
              itemCount: items.length + (cubit.hasMore ? 1 : 0),
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                if (index >= items.length) {
                  return Center(
                    child: TextButton(
                      onPressed: cubit.loadMore,
                      child: const Text('Показать ещё'),
                    ),
                  );
                }
                final item = items[index];
                return _NotificationTile(
                  item: item,
                  onTap: (item.isRead ?? true)
                      ? null
                      : () => cubit.markRead(item.id),
                );
              },
            ),
          );
        },
        failure: (_, failure) => NexoFailureView(
          failure: failure,
          onRetry: () => cubit.retry(),
        ),
      ),
    );
  }
}

class _NotificationTile extends StatelessWidget {
  final NotificationEntity item;
  final VoidCallback? onTap;

  const _NotificationTile({required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    final unread = !(item.isRead ?? true);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: unread ? const Color(0xFFFFF3E0) : const Color(0xFFF4F4F5),
          borderRadius: BorderRadius.circular(14),
          border: unread
              ? const Border(
                  left: BorderSide(color: Color(0xFFFF9800), width: 5),
                )
              : null,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.message,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: unread
                          ? FontWeight.w700
                          : FontWeight.w500,
                    ),
                  ),
                  if ((item.createdAt ?? '').isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      item.createdAt!,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: const Color(0xFF7D8184),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (unread)
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF9800),
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
