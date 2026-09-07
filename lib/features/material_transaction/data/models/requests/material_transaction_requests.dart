/// Create-transaction body for `POST /material-transactions/`.
/// Required: `material` (id), `transaction_type`, `quantity` (decimal-string).
class CreateMaterialTransactionRequest {
  const CreateMaterialTransactionRequest({
    required this.materialId,
    required this.transactionType,
    required this.quantity,
    this.note,
  });

  final int materialId;
  final String transactionType;
  final String quantity;
  final String? note;

  Map<String, dynamic> toJson() => {
    'material': materialId,
    'transaction_type': transactionType,
    'quantity': quantity,
    if (note != null) 'note': note,
  };
}

/// Partial-update body for `PATCH /material-transactions/{id}/`.
class UpdateMaterialTransactionRequest {
  const UpdateMaterialTransactionRequest({this.note});

  final String? note;

  Map<String, dynamic> toJson() => {if (note != null) 'note': note};
}
