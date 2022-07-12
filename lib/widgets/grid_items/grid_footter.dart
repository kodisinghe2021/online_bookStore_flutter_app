import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/book_model.dart';
import 'package:book_store_app/provider/books_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridTileFooter extends StatelessWidget {
  const GridTileFooter({
    Key? key,
    required this.fontSize,
  }) : super(key: key);
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    final book = Provider.of<BooksProvider>(context).getBooks;
    final BookModel selectedBook =
        Provider.of<BooksProvider>(context, listen: false).singleBook;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price: Rs.${selectedBook.price}",
          style: TextStyle(color: kPrimeryColor, fontSize: fontSize),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: kPrimeryColor,
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
