import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/books_provider.dart';
import 'package:book_store_app/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//this class for all products
class ProductOverView extends StatefulWidget {
  const ProductOverView({Key? key}) : super(key: key);
  static const pageKey = '/product-overview';
  @override
  State<ProductOverView> createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  //create object from provider class
  @override
  Widget build(BuildContext context) {
    final booksData = Provider.of<BooksProvider>(context);
    final books = booksData.getBooks;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_outlined),
        title: const Text("BookLand Book Store"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: books.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => Card(
          elevation: 10,
          color: kFocusBorderColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ProductItem(
            widget: widget,
            index: index,
          ),
        ),
      ),
    );
  }
}
