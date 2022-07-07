import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/books_provider.dart';
import 'package:book_store_app/widgets/grid_items/grid_fotter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleBookFullDetailsScreen extends StatelessWidget {
  const SingleBookFullDetailsScreen({
    Key? key,
    this.index = 0,
  }) : super(key: key);

  static const pageKey = '/book-full-details-screen';

  // final BookModel book;
  final index;
  @override
  Widget build(BuildContext context) {
    final booksData = Provider.of<BooksProvider>(context);
    final books = booksData.getBooks;

    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(books[index].bookName)),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.only(top: 10),
            width: screenSize.width,
            height: screenSize.width * 1.35,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: screenSize.width * 0.9,
                    height: screenSize.width * 1.35,
                    // color: kBorderColor,
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      //  color: Colors.transparent,
                      child: Image.network(
                        books[index].imageURL,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: screenSize.width * 0.9,
                    height: screenSize.width * 0.23,
                    decoration: BoxDecoration(
                      color: kBorderColor.withOpacity(0.8), // green as background color
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: GridTileFooter(index: index, fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
