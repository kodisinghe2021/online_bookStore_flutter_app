import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/books_provider.dart';
import 'package:book_store_app/utils/util_functions.dart';
import 'package:book_store_app/views/products/single_book_full_details.dart';
import 'package:book_store_app/views/products/product_overview.dart';
import 'package:book_store_app/widgets/grid_items/grid_fotter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//this class for one single item, this desing will apply to the one book
class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.widget,
    required this.index,
  }) : super(key: key);

  final ProductOverView widget;
  final index;

  @override
  Widget build(BuildContext context) {
    final booksData = Provider.of<BooksProvider>(context);
    final books = booksData.getBooks;

    return GridTile(
      footer: Container(
        padding: const EdgeInsets.all(10),
        color: kPrimeryColor,
        child: GridTileFooter(
          index: index,
          // book: books,
          fontSize: 14.0,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          UtilFuntion.NavigateTo(
              context, SingleBookFullDetailsScreen(index: index));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            books[index].imageURL,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
