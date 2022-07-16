import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/book_model.dart';
import 'package:book_store_app/provider/books_provider.dart';
import 'package:book_store_app/provider/cart.dart';
import 'package:book_store_app/views/products/single_book_full_details.dart';
import 'package:book_store_app/widgets/book_grid_widgtes/book_grid_separate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductSingleItemModel extends StatelessWidget {
  const ProductSingleItemModel({
    Key? key,
    // required this.book,
  }) : super(key: key);
  // final BookModel book;

  @override
  Widget build(BuildContext context) {
    final book = Provider.of<BookModel>(context);
    final cart = Provider.of<Cart>(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Provider.of<BooksProvider>(context, listen: false)
                      .setSingleBook(book);
                  Navigator.pushNamed(
                    context,
                    SingleBookFullDetailsScreen.pageKey,
                    arguments: book,
                  );
                },
                child: Image.network(
                  book.imageURL,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
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
                    onPressed: () {
                      cart.addItem(
                        book.bookID,
                        book.bookName,
                        double.parse(book.price),
                      );
                    },
                    icon: Icon(Icons.shopping_cart),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
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
                    onPressed: () {
                      book.toggleFavouriteStates();
                    },
                    icon: !book.isFavourite
                        ? Icon(Icons.favorite_border)
                        : Icon(Icons.favorite, color: Colors.redAccent),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.star_border, color: kPrimeryColor),
              Icon(Icons.star_border, color: kPrimeryColor),
              Icon(Icons.star_border, color: kPrimeryColor),
              Icon(Icons.star_border, color: kPrimeryColor),
            ],
          ),
          const SizedBox(height: 5),
          BookFootterText(
            text: book.bookName,
          ),
          const SizedBox(height: 5),
          BookFootterText(
            text: book.price,
          ),
        ],
      ),
    );
  }
}
