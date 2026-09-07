import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/core/di/di.dart';
import 'package:san_dent/features/material/domain/entities/material_entity.dart';
import 'package:san_dent/features/material/domain/usecases/get_material_usecase.dart';
import 'package:san_dent/features/material_transaction/domain/entities/material_transaction_entity.dart';
import 'package:san_dent/features/material_transaction/domain/parameters/material_transaction_params.dart';
import 'package:san_dent/features/material_transaction/presentation/cubit/material_transaction_cubit.dart';

/// Material detail — screen created from ZERO (no detail design existed):
/// stock card + income/outcome actions + transaction history.
///
/// Stock changes go through direct `POST /material-transactions/` (verified
/// working); `add_stock`/`subtract_stock` actions 500 on the backend
/// (reported) and are intentionally NOT wired here.
class MaterialDetailScreen extends StatefulWidget {
  const MaterialDetailScreen({super.key, required this.material});

  final MaterialEntity material;

  @override
  State<MaterialDetailScreen> createState() => _MaterialDetailScreenState();
}

class _MaterialDetailScreenState extends State<MaterialDetailScreen> {
  late MaterialEntity _material;

  MaterialTransactionCubit get _transactions =>
      context.read<MaterialTransactionCubit>();

  @override
  void initState() {
    super.initState();
    _material = widget.material;
  }

  Future<void> _reloadMaterial() async {
    final result = await getIt<GetMaterialByIdUseCase>()(_material.id);
    if (!mounted) return;
    final updated = result.dataOrNull;
    if (updated != null) setState(() => _material = updated);
  }

  Future<void> _showRecordDialog(String type) async {
    final quantityController = TextEditingController();
    final noteController = TextEditingController();
    final isIncome = type == TransactionType.income;
    final ok = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(isIncome ? 'Поступление' : 'Списание'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: quantityController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: const InputDecoration(
                labelText: 'Количество',
                hintText: '10.00',
              ),
            ),
            TextField(
              controller: noteController,
              decoration: const InputDecoration(labelText: 'Примечание'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () {
              final error = CreateMaterialTransactionParams.validateQuantity(
                quantityController.text,
              );
              if (error != null) {
                ScaffoldMessenger.of(
                  dialogContext,
                ).showSnackBar(SnackBar(content: Text(error)));
                return;
              }
              Navigator.of(dialogContext).pop(true);
            },
            child: const Text('Сохранить'),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    final recorded = await _transactions.record(
      transactionType: type,
      quantity: quantityController.text.trim().replaceAll(',', '.'),
      note: noteController.text.trim().isEmpty
          ? null
          : noteController.text.trim(),
    );
    if (recorded) _reloadMaterial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2773BB),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () => context.pop(),
                  ),
                  Expanded(
                    child: Text(
                      _material.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _StockCard(material: _material),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: _PillButton(
                              label: 'Поступление',
                              onTap: () => _showRecordDialog(
                                TransactionType.income,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _PillButton(
                              label: 'Списание',
                              onTap: () => _showRecordDialog(
                                TransactionType.outcome,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'История',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      BlocConsumer<
                        MaterialTransactionCubit,
                        NexoAsyncState<List<MaterialTransactionEntity>>
                      >(
                        listener: (context, state) {
                          final failure = state.failureOrNull;
                          if (failure != null) {
                            showFailureSnackBar(context, failure);
                          }
                        },
                        builder: (context, state) {
                          return NexoAsyncStateBuilder<
                            List<MaterialTransactionEntity>
                          >(
                            state: state,
                            loading: (_) => const NexoSkeletonList(
                              itemCount: 3,
                            ),
                            success: (_, items) {
                              if (items.isEmpty) {
                                return const NexoEmptyView(
                                  title: 'Нет операций',
                                  subtitle:
                                      'Поступления и списания появятся здесь',
                                );
                              }
                              return Column(
                                children: items
                                    .map(
                                      (t) => _TransactionTile(item: t),
                                    )
                                    .toList(),
                              );
                            },
                            failure: (_, failure) => NexoFailureView(
                              failure: failure,
                              onRetry: () => _transactions.retry(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StockCard extends StatelessWidget {
  final MaterialEntity material;

  const _StockCard({required this.material});

  @override
  Widget build(BuildContext context) {
    final stock = [
      if (material.currentStock != null) material.currentStock!,
      material.unit,
    ].join(' ');
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE4E4E7),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Остаток: $stock',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Использовано: ${material.totalUsed ?? '—'} ${material.unit}',
            style: GoogleFonts.poppins(fontSize: 15),
          ),
          if (material.description != null &&
              material.description!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                material.description!,
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
        ],
      ),
    );
  }
}

class _PillButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _PillButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFF2773BB),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class _TransactionTile extends StatelessWidget {
  final MaterialTransactionEntity item;

  const _TransactionTile({required this.item});

  @override
  Widget build(BuildContext context) {
    final color = switch (item.transactionType) {
      TransactionType.income => const Color(0xFF2ECC71),
      TransactionType.outcome => const Color(0xFFE0524F),
      _ => const Color(0xFFF39C12),
    };
    final title =
        item.transactionTypeDisplay ??
        TransactionType.displayName(item.transactionType);
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F5),
        borderRadius: BorderRadius.circular(14),
        border: Border(left: BorderSide(color: color, width: 5)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
                if (item.note != null && item.note!.isNotEmpty)
                  Text(
                    item.note!,
                    style: GoogleFonts.poppins(fontSize: 13),
                  ),
              ],
            ),
          ),
          Text(
            item.quantity,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
