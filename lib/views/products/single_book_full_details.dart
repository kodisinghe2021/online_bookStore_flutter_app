import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/book_model.dart';
import 'package:book_store_app/provider/books_provider.dart';
import 'package:book_store_app/widgets/book_grid_widgtes/book_grid_separate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleBookFullDetailsScreen extends StatelessWidget {
  const SingleBookFullDetailsScreen({Key? key}) : super(key: key);
  static const pageKey = '/book-full-details-screen';
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final selectedBook = Provider.of<BooksProvider>(context).getSingleBook;
    final BookModel book = ModalRoute.of(context)!.settings.arguments as BookModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(selectedBook.bookName)),
        body: Container(
          width: screenSize.width,
          height: screenSize.height,
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: screenSize.width,
                  height: screenSize.width * 1.35,
                  child: Stack(
                    children: [
                      //header image of book
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: screenSize.width * 0.9,
                          height: screenSize.width * 1.25,
                          // color: kBorderColor,
                          child: Container(
                            child: Image.network(
                              selectedBook.imageURL,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.star_border, color: kPrimeryColor),
                    Icon(Icons.star_border, color: kPrimeryColor),
                    Icon(Icons.star_border, color: kPrimeryColor),
                    Icon(Icons.star_border, color: kPrimeryColor),
                    SizedBox(width: 50),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: kBorderColor.withOpacity(0.8),
                        border: Border.all(
                          color: kBorderColor,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          book.toggleFavouriteStates();
                        },
                        icon: !selectedBook.isFavourite
                            ? Icon(Icons.favorite_border)
                            : Icon(Icons.favorite, color: Colors.redAccent),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: kBorderColor.withOpacity(0.8),
                    border: Border.all(
                      color: kBorderColor,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart),
                  ),
                ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: BookFootterText(
                    size: 25.0,
                    text: selectedBook.bookName,
                  ),
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: BookFootterText(
                    size: 25.0,
                    text: selectedBook.price,
                  ),
                ),
                //description line
                Container(
                  width: screenSize.width,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    selectedBook.description,
                    style: const TextStyle(fontSize: 18),
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
