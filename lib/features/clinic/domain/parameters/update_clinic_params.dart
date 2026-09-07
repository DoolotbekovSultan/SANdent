class UpdateClinicParams {
  const UpdateClinicParams({
    required this.id,
    this.name,
    this.address,
    this.phone,
    this.email,
    this.isActive,
  });

  final int id;
  final String? name;
  final String? address;
  final String? phone;
  final String? email;
  final bool? isActive;
}
