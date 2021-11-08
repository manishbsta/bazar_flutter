class Vendor {
  final String id;
  final String name;
  final String address;

  Vendor({
    required this.id,
    required this.name,
    required this.address,
  });

  Vendor copyWith({
    String? id,
    String? name,
    String? address,
  }) {
    return Vendor(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  factory Vendor.fromMap(Map<String, dynamic> map) {
    return Vendor(
      id: map['id'],
      name: map['name'],
      address: map['address'],
    );
  }
}
