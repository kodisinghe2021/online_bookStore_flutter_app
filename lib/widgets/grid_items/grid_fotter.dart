import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/books_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridTileFooter extends StatelessWidget {
  const GridTileFooter({
    Key? key,
    // required this.book,
    required this.fontSize,
    required this.index,
  }) : super(key: key);

  // final BookModel book;
  final double fontSize;
  final index;
  @override
  Widget build(BuildContext context) {
    final booksData = Provider.of<BooksProvider>(context);
    final books = booksData.getBooks;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price: Rs.${books[index].price}",
          style: TextStyle(color: kPrimeryColor, fontSize: fontSize),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color:kPrimeryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: kPrimeryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
