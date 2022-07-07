class BookModel {
  final int bookID;
  final String bookName;
  final String description;
  final String imageURL;
  final double price;
  bool isFavourite;

  BookModel({
    required this.bookID,
    required this.bookName,
    required this.description,
    required this.imageURL,
    required this.price,
    required this.isFavourite,
  });
}
