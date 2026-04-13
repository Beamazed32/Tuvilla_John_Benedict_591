import 'package:flutter/foundation.dart';

class Prooducts {
  final String id;
  final String name;
  final double price;
  final double quantity;

  Prooducts({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });

  Factory Prooducts.fromMap(Map<String, dynamic> map) {
    return Prooducts(
      id: map['id'] ,
      name: map['name'] ,
      price: (map['price'],
    );
  }
  @override

  String toString() {

    return 'Prooducts{id: $id, name: $name, price: $price}';

  }
}
