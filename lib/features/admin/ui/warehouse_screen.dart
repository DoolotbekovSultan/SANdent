import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/material/domain/entities/material_entity.dart';
import 'package:san_dent/features/material/presentation/cubit/material_cubit.dart';

/// Warehouse list (design kept, data from [MaterialCubit]).
///
/// Backend-driven statuses: `needs_restock=true` → red dot, `false` → green.
/// Old mock colors (orange etc.) are gone — the backend exposes a boolean.
class WarehouseScreen extends StatefulWidget {
  const WarehouseScreen({super.key});

  @override
  State<WarehouseScreen> createState() => _WarehouseScreenState();
}

class _WarehouseScreenState extends State<WarehouseScreen> {
  final _searchController = TextEditingController();

  MaterialCubit get _cubit => context.read<MaterialCubit>();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<MaterialCubit>();
    return Scaffold(
      backgroundColor: const Color(0xFF2773BB),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Склад',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1A1A),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _searchController,
                onSubmitted: _cubit.search,
                decoration: InputDecoration(
                  hintText: 'Поиск',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFFB9B9BE),
                  ),
                  suffixIcon: _searchController.text.isEmpty
                      ? null
                      : IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            _cubit.search('');
                            setState(() {});
                          },
                        ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF4F4F5),
                  hintStyle: GoogleFonts.poppins(
                    color: const Color(0xFFB9B9BE),
                    fontSize: 16,
                  ),
                ),
                onChanged: (_) => setState(() {}),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: NexoAsyncStateBuilder<List<MaterialEntity>>(
                state: cubit.state,
                loading: (_) => const NexoSkeletonList(itemCount: 6),
                success: (_, materials) {
                  if (materials.isEmpty) {
                    return const NexoEmptyView(
                      title: 'Склад пуст',
                      subtitle: 'Попробуйте изменить запрос',
                    );
                  }
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: materials.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 14),
                    itemBuilder: (context, index) => _WarehouseRow(
                      item: materials[index],
                      onTap: () => context.push(
                        '/admin/warehouse/${materials[index].id}',
                        extra: materials[index],
                      ),
                    ),
                  );
                },
                failure: (_, failure) => NexoFailureView(
                  failure: failure,
                  onRetry: () => cubit.retry(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WarehouseRow extends StatelessWidget {
  final MaterialEntity item;
  final VoidCallback onTap;

  const _WarehouseRow({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final dot = switch (item.needsRestock) {
      true => const Color(0xFFE0524F),
      false => const Color(0xFF2ECC71),
      null => const Color(0xFFF39C12),
    };
    final qty = [
      if (item.currentStock != null) item.currentStock!,
      item.unit,
    ].join(' ');
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 52,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFE4E4E7),
                borderRadius: BorderRadius.circular(26),
              ),
              child: Text(
                item.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF1A1A1A),
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 52,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE4E4E7),
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Text(
                    qty,
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF1A1A1A),
                      fontSize: 15,
                    ),
                  ),
                ),
                Positioned(
                  top: -2,
                  right: 4,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: dot,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
