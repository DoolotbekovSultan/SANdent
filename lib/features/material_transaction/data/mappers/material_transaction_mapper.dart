import '../models/material_transaction_model.dart';
import '../../domain/entities/material_transaction_entity.dart';

extension MaterialTransactionMapper on MaterialTransactionModel {
  MaterialTransactionEntity toDomain() => MaterialTransactionEntity(
    id: id,
    materialId: material,
    materialName: material_name,
    transactionType: transaction_type,
    transactionTypeDisplay: transaction_type_display,
    quantity: quantity,
    note: note,
    createdBy: created_by,
    createdByName: created_by_name,
    createdAt: created_at,
  );
}

extension MaterialTransactionListMapper on List<MaterialTransactionModel> {
  List<MaterialTransactionEntity> toDomain() =>
      map((e) => e.toDomain()).toList();
}
