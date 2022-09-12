import 'package:flutter/material.dart';
import 'package:intern/models/menu.dart';
import 'package:intern/screens/category_screen.dart';
import 'package:intern/screens/carts.dart';

class TabsScreen extends StatefulWidget {
  List<Menu> cart;
  TabsScreen(this.cart);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, dynamic>>? _pages;

  int _selectedPageindex = 0;

  @override
  void initState() {
    _pages = [
      {
        'Page': CategoriesScreen(),
        'title': 'Categories',
      },
      {
        'Page': FavouritesScreen(widget.cart),
        'title': 'Cart',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages![_selectedPageindex]['title']),
      ),
      body: _pages![_selectedPageindex]['Page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageindex,
        selectedItemColor: Theme.of(context).accentColor,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
