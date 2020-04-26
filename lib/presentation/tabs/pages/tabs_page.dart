import 'package:flutter/material.dart';
import 'package:flutter_shopping/presentation/home/pages/home_page.dart';
import 'package:flutter_shopping/presentation/search/pages/search_page.dart';
import 'package:flutter_shopping/presentation/shop/pages/shop_page.dart';
import 'package:flutter_shopping/presentation/tabs/models/tab_navigation_item.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  final List<TabNavigationItem> pages = [
    TabNavigationItem(
      page: HomePage(),
      icon: Icon(Icons.home),
      title: Text("Home"),
    ),
    TabNavigationItem(
      page: ShopPage(),
      icon: Icon(Icons.shopping_basket),
      title: Text("Shop"),
    ),
    TabNavigationItem(
      page: SearchPage(),
      icon: Icon(Icons.search),
      title: Text("Search"),
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          for (final tabItem in pages) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: <BottomNavigationBarItem>[
          for (final tabItem in pages)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              title: tabItem.title,
            ),
        ],
      ),
    );
  }
}
