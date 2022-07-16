import 'package:book_store_app/constant.dart';
import 'package:book_store_app/provider/cart.dart';
import 'package:book_store_app/views/home_page/home_screen_tabview.dart';
import 'package:book_store_app/widgets/book_grid_widgtes/cart_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const pageKey = '/cart-screen';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Collection'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushNamed(context, HomePageTabView.pageKey);
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Total: ${cart.getTotalPrice} LKR",
                style: GoogleFonts.titanOne(
                  textStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: kPrimeryColor,
                      letterSpacing: 3),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: cart.getItemCount,
                itemBuilder: (context, index) => Card(
                  child: Column(
                    children: [
                      CartListTile(
                        id: cart.getItemMap.values.toList()[index].id,
                        title: cart.getItemMap.values.toList()[index].title,
                        price: cart.getItemMap.values.toList()[index].price,
                        quantity:
                            cart.getItemMap.values.toList()[index].quantity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                cart.addItem(
                                  cart.getItemMap.values.toList()[index].id,
                                  cart.getItemMap.values.toList()[index].title,
                                  cart.getItemMap.values.toList()[index].price,
                                );
                              },
                              icon: const Icon(Icons.add_circle_outline)),
                          IconButton(
                              onPressed: () {
                                cart.removeItem(
                                    cart.getItemMap.values.toList()[index].id);
                              },
                              icon: const Icon(Icons.remove_circle_outline)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
