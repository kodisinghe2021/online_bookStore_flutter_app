import 'package:flutter/material.dart';

class CartItem {
  String title;
  String id;
  double price;
  int quantity;

  CartItem({
    required this.title,
    required this.id,
    required this.price,
    required this.quantity,
  });
}

class Cart with ChangeNotifier {
  // empty private map
  Map<String, CartItem> _itemMap = {};

// item getter
  Map<String, CartItem> get getItemMap {
    return {..._itemMap};
  }

// return total amount
  double get getTotalPrice {
    double total = 0.0;
    _itemMap.forEach((key, cartitem) {
      total += cartitem.price * cartitem.quantity;
    });
    return total;
  }

// remove item from cart
  void removeItem(String bookID) {
    _itemMap.update(
      bookID,
      (existingCartItem) => CartItem(
          title: existingCartItem.title,
          id: existingCartItem.id,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity > 0
              ? existingCartItem.quantity - 1
              : existingCartItem.quantity = 0),
    );
  }

// item cont getter
  int get getItemCount => _itemMap.length;
  // adding new item

  void addItem(String bookID, String title, double price) {
    if (_itemMap.containsKey(bookID)) {
// dont add new one. only chnage the quantity
      _itemMap.update(
        bookID,
        (existingCartItem) => CartItem(
            title: existingCartItem.title,
            id: existingCartItem.id,
            price: existingCartItem.price,
            quantity: existingCartItem.quantity + 1),
      );
    } else {
      _itemMap.putIfAbsent(
        bookID,
        () => CartItem(
            title: title,
            id: DateTime.now().toString(),
            price: price,
            quantity: 1),
      );
    }
    notifyListeners();
  }
}
