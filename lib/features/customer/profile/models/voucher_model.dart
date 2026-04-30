class VoucherModel {
  final String id;
  final double voucher;
  final bool read;
  VoucherModel({required this.id, required this.voucher, required this.read});
  factory VoucherModel.fromJson(Map<String, dynamic> json) {
    return VoucherModel(
      id: json['id'] ?? '',
      voucher: (json['voucher'] as num?)?.toDouble() ?? 0.0,
      read: json['read'] ?? false,
    );
  }
  toJson() => {
        'id': id,
        'voucher': voucher,
        'read': read,
      };
}
