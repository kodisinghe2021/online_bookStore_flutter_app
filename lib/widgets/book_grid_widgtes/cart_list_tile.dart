
import 'package:flutter/material.dart';

class CartListTile extends StatelessWidget {
  const CartListTile({
    Key? key,
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  final String id;
  final String title;
  final double price;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('Price $price'),
      title: Text(title),
      subtitle: Text('Total Price: ${price * quantity} LKR'),
      trailing: Text('Quantity: $quantity'),
    );
  }
}
