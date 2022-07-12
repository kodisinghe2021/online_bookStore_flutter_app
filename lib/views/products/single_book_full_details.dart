import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/book_model.dart';
import 'package:book_store_app/provider/books_provider.dart';
import 'package:book_store_app/widgets/grid_items/grid_footter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleBookFullDetailsScreen extends StatelessWidget {
  const SingleBookFullDetailsScreen({Key? key}) : super(key: key);
  static const pageKey = '/book-full-details-screen';

  @override
  Widget build(BuildContext context) {
    final book = Provider.of<BooksProvider>(context).getBooks;
    final BookModel selectedBook =
        Provider.of<BooksProvider>(context, listen: false).singleBook;
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(selectedBook.bookName)),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10),
                width: screenSize.width,
                height: screenSize.width * 1.35,
                child: Stack(
                  children: [
                    //header image of book
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: screenSize.width * 0.9,
                        height: screenSize.width * 1.35,
                        // color: kBorderColor,
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          child: Image.network(
                            selectedBook.imageURL,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    // price + cart + favourit icon buttons bar
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: screenSize.width * 0.9,
                        height: screenSize.width * 0.23,
                        decoration: BoxDecoration(
                          color: kBorderColor
                              .withOpacity(0.89), // green as background color
                        ),
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: GridTileFooter(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              //description line
              Container(
                width: screenSize.width,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text(
                  selectedBook.description,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
