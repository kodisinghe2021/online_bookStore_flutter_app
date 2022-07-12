import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/books_provider.dart';
import 'package:book_store_app/widgets/book_grid_widgtes/book_grid_separate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductFavouritePage extends StatelessWidget {
  const ProductFavouritePage({Key? key}) : super(key: key);
  static const pageKey = '/product-overview';
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final booksData = Provider.of<BooksProvider>(context);
    final books = booksData.getBooks;
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          padding: const EdgeInsets.all(17),
          itemCount: books.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.network(
                      books[index].imageURL,
                      fit: BoxFit.fill,
                    ),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: RounderdIcon(
                        iconS: Icon(Icons.shopping_cart, color: kPrimeryColor),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: RounderdIcon(
                        iconS:
                            Icon(Icons.favorite_border, color: kPrimeryColor),
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
                  text: books[index].bookName,
                ),
                const SizedBox(height: 5),
                BookFootterText(
                  text: books[index].price,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
