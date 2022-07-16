import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:book_store_app/views/cart_screen/cart_screen.dart';
import 'package:book_store_app/views/products/product_best_selling.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class HomePageTabView extends StatelessWidget {
  HomePageTabView({Key? key}) : super(key: key);
  final TextEditingController _serchBarEditor = TextEditingController();
  static const pageKey = '/home-page-tab-view';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AnimSearchBar(
                        width: 400,
                        textController: _serchBarEditor,
                        onSuffixTap: () {}),
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.shopping_cart),
                          onPressed: () {
                            Navigator.pushNamed(context, CartScreen.pageKey);
                          },
                        ),
                        const Text("My Cart"),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.menu_sharp),
                          onPressed: () {},
                        ),
                        const Text("My Profile"),
                      ],
                    )
                  ],
                ),
              ),
              ButtonsTabBar(
                backgroundColor: Colors.red,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    icon: Icon(Icons.favorite_border_rounded),
                    text: "Best Selling",
                  ),
                  Tab(
                    icon: Icon(Icons.bookmark_border),
                    text: "My Favourite",
                  ),
                  Tab(
                    icon: Icon(Icons.category_outlined),
                    text: "Catogories",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ProductBestSelling(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
