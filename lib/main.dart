import 'package:flutter/material.dart';
import 'package:intern/dummy_data.dart';
import 'package:intern/models/menu.dart';
import 'package:intern/screens/category_menu_screen.dart';
import 'package:intern/screens/category_screen.dart';
import 'package:intern/screens/menu_detail.dart';
import 'package:intern/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegetarian': false,
    'vegan': false,
  };
  List<Menu> _availableItem = DUMMY_MENUS;

  List<Menu> _cartItem = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

    });
  }

  void _toggledFavourite(String Id) {
    final existingIndex =
        _cartItem.indexWhere((m) => m.id == Id);
    if (existingIndex >= 0) {
      setState(() {
        _cartItem.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _cartItem
            .add(DUMMY_MENUS.firstWhere((m) => m.id == Id));
      });
    }
  }

  bool _isItem(String id) {
    return _cartItem.any((m) => m.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant app',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.red,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20.0,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      //home: CategoriesScreen(),
      routes: {
        '/': (context) => TabsScreen(_cartItem),
        CategoryMenuScreen.routeName: (context) =>
            CategoryMenuScreen(_availableItem),
        DetailScreen.routeName: (context) =>
            DetailScreen(_toggledFavourite, _isItem),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
    );
  }
}
