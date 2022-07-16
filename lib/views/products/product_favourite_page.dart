// import 'package:book_store_app/provider/books_provider.dart';
// import 'package:book_store_app/widgets/book_grid_widgtes/single_product_item.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class ProductForMe extends StatelessWidget {
//   const ProductForMe({Key? key}) : super(key: key);
//   static const pageKey = '/product-overview';
//   @override
//   Widget build(BuildContext context) {
//     final booksData = Provider.of<BooksProvider>(context);
//     final books = booksData.getBookList;
//     return SafeArea(
//       child: Scaffold(
//         body: GridView.builder(
//           padding: const EdgeInsets.all(17),
//           itemCount: books.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 2 / 4,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 10,
//           ),
//           itemBuilder: (context, index) => ProductSingleItemModel(),
//         ),
//       ),
//     );
//   }
// }
