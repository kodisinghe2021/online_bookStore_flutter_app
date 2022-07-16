import 'package:flutter/material.dart';

class BookModel with ChangeNotifier {
  final String bookID;
  final String bookName;
  final String description;
  final String imageURL;
  final String price;
  bool isFavourite;

  BookModel({
    required this.bookID,
    required this.bookName,
    required this.description,
    required this.imageURL,
    required this.price,
    this.isFavourite = false,
  });

  void toggleFavouriteStates() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
