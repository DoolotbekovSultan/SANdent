import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/procedure/domain/entities/procedure_entity.dart';
import 'package:san_dent/features/procedure/presentation/cubit/procedure_cubit.dart';
import 'package:san_dent/features/procedure_category/domain/entities/procedure_category_entity.dart';
import 'package:san_dent/features/procedure_category/presentation/cubit/procedure_category_cubit.dart';

/// Procedure catalog — screen created from ZERO ([UI-new], AGENTS.md):
/// no catalog design existed in the mock UI. Visual language follows
/// `PatientsScreen` (pills, gray cards, Poppins); data structure is
/// backend-only (`Procedure`: name/code/price/duration/category).
class ProceduresScreen extends StatefulWidget {
  const ProceduresScreen({super.key});

  @override
  State<ProceduresScreen> createState() => _ProceduresScreenState();
}

class _ProceduresScreenState extends State<ProceduresScreen> {
  final _searchController = TextEditingController();
  int? _categoryId;

  ProcedureCubit get _procedures => context.read<ProcedureCubit>();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final proceduresCubit = context.watch<ProcedureCubit>();
    final categoriesCubit = context.watch<ProcedureCategoryCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, size: 30, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Процедуры',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: .w800,
            fontSize: 17,
            letterSpacing: 1.02,
            height: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: .symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchController,
              onSubmitted: _procedures.search,
              decoration: InputDecoration(
                hintText: 'Поиск',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isEmpty
                    ? null
                    : IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          _procedures.search('');
                          setState(() {});
                        },
                      ),
                border: OutlineInputBorder(
                  borderRadius: .circular(22),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xFFF4F4F5),
              ),
              onChanged: (_) => setState(() {}),
            ),
          ),
          SizedBox(
            height: 40,
            child: NexoAsyncStateBuilder<List<ProcedureCategoryEntity>>(
              state: categoriesCubit.state,
              loading: (_) => const SizedBox.shrink(),
              failure: (_, _) => const SizedBox.shrink(),
              success: (_, categories) {
                if (categories.isEmpty) return const SizedBox.shrink();
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: .symmetric(horizontal: 16),
                  itemCount: categories.length + 1,
                  separatorBuilder: (_, _) => const SizedBox(width: 8),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return _CategoryChip(
                        label: 'Все',
                        selected: _categoryId == null,
                        onTap: () => setState(() => _categoryId = null),
                      );
                    }
                    final category = categories[index - 1];
                    return _CategoryChip(
                      label: category.name,
                      selected: _categoryId == category.id,
                      onTap: () => setState(
                        () => _categoryId = _categoryId == category.id
                            ? null
                            : category.id,
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Expanded(
            child: NexoAsyncStateBuilder<List<ProcedureEntity>>(
              state: proceduresCubit.state,
              loading: (_) => const NexoSkeletonList(itemCount: 6),
              success: (_, procedures) {
                final visible = _categoryId == null
                    ? procedures
                    : procedures
                          .where((p) => p.categoryId == _categoryId)
                          .toList();
                if (visible.isEmpty) {
                  return const NexoEmptyView(
                    title: 'Нет процедур',
                    subtitle: 'Попробуйте изменить запрос',
                  );
                }
                return RefreshIndicator(
                  onRefresh: () => proceduresCubit.refresh(),
                  child: ListView.separated(
                    padding: .symmetric(horizontal: 16, vertical: 16),
                    itemCount: visible.length + 1,
                    separatorBuilder: (_, _) => const SizedBox(height: 14),
                    itemBuilder: (context, index) {
                      if (index >= visible.length) {
                        return Center(
                          child: proceduresCubit.hasMore
                              ? TextButton(
                                  onPressed: proceduresCubit.loadMore,
                                  child: const Text('Показать ещё'),
                                )
                              : const SizedBox.shrink(),
                        );
                      }
                      return _ProcedureCard(procedure: visible[index]);
                    },
                  ),
                );
              },
              failure: (_, failure) => NexoFailureView(
                failure: failure,
                onRetry: () => proceduresCubit.retry(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _CategoryChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: selected
              ? const Color(0xFF2773BB)
              : const Color(0xFFE4E4E7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: selected ? Colors.white : const Color(0xFF1A1A1A),
          ),
        ),
      ),
    );
  }
}

class _ProcedureCard extends StatelessWidget {
  final ProcedureEntity procedure;

  const _ProcedureCard({required this.procedure});

  @override
  Widget build(BuildContext context) {
    final details = [
      if (procedure.code != null && procedure.code!.isNotEmpty)
        procedure.code!,
      if (procedure.durationMinutes != null)
        '${procedure.durationMinutes} мин',
    ].join(' • ');
    return SizedBox(
      height: 62,
      child: Row(
        children: [
          Expanded(
            flex: 218,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(11),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    procedure.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      height: 1,
                      letterSpacing: 0.9,
                      color: Colors.black,
                    ),
                  ),
                  if (details.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Text(
                      details,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        height: 1,
                        color: const Color(0xFF4A4A4A),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 90,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(11),
              ),
              alignment: Alignment.center,
              child: Text(
                procedure.price ?? '—',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  height: 1,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
