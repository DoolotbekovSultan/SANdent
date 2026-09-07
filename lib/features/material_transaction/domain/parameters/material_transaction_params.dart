import 'package:nexo/nexo_core.dart';

import '../entities/material_transaction_entity.dart';

/// Parameters for [CreateMaterialTransactionUseCase].
class CreateMaterialTransactionParams {
  const CreateMaterialTransactionParams({
    required this.materialId,
    required this.transactionType,
    required this.quantity,
    this.note,
  });

  final int materialId;
  final String transactionType;
  final String quantity;
  final String? note;

  static String? validateQuantity(String? value) {
    final required = NexoValidators.requiredField(fieldName: 'Количество')(
      value?.trim(),
    );
    if (required != null) return required;
    final normalized = value!.trim().replaceAll(',', '.');
    if (num.tryParse(normalized) == null) return 'Число, например 10.00';
    if (num.parse(normalized) <= 0) return 'Количество должно быть больше 0';
    return null;
  }

  static String? validateType(String? value) {
    if (value == null || !TransactionType.values.contains(value)) {
      return 'Тип: поступление/списание/корректировка';
    }
    return null;
  }
}

/// Parameters for [UpdateMaterialTransactionUseCase] (note only — ledger).
class UpdateMaterialTransactionParams {
  const UpdateMaterialTransactionParams({required this.id, this.note});

  final int id;
  final String? note;
}
