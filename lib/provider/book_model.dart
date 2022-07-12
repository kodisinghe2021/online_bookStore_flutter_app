import 'package:flutter/material.dart';

class BookModel with ChangeNotifier {
  final int bookID;
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
    required this.isFavourite,
  });

  void toggleFavouriteStates() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
