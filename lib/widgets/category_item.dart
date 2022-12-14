import 'package:flutter/material.dart';
import 'package:intern/screens/category_menu_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title, id;
  final Color color;

  const CategoryItem(this.title, this.id, this.color, {Key? key})
      : super(key: key);

  void selctCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMenuScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selctCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
