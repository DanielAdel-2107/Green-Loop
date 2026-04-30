class UserModel {
  final String name;
  final String email;
  final String address;
  final String? image;
  final double voucher;
  final String? phone;
  UserModel(
      {required this.name,
      required this.email,
      required this.address,
      required this.voucher,
      this.phone,
      this.image});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      address: json['address'],
      phone: json['phone'],
      image: json['image'],
      voucher: (json['voucher'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'address': address,
        'phone': phone,
        'image': image,
        'voucher': voucher
      };

  @override
  String toString() {
    return 'UserModel{name: $name, email: $email, address: $address}';
  }
}
