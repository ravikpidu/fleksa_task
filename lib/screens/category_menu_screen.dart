import 'package:flutter/material.dart';
import 'package:intern/models/menu.dart';
import 'package:intern/widgets/menu_item.dart';

class CategoryMenuScreen extends StatefulWidget {
  static const routeName = '/category-menus';

  final List<Menu> availables;

  CategoryMenuScreen(this.availables);

  @override
    _CategoryScreenState createState() =>   _CategoryScreenState();
}

class   _CategoryScreenState extends State<CategoryMenuScreen> {
  String? categoryTitle;
  List<Menu>? displayed;
  var _loadedInitData = false;

  @override
  void initState() {
    // ...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayed = widget.availables.where((m) {
        return m.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _remove(String Id) {
    setState(() {
      displayed!.removeWhere((m) => m.id == Id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Item(
            id: displayed![index].id,
            title: displayed![index].title,
            price: displayed![index].price,
          );
        },
        itemCount: displayed!.length,
      ),
    );
  }
}
