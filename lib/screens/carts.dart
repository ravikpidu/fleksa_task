import 'package:flutter/material.dart';
import 'package:intern/models/menu.dart';
import 'package:intern/widgets/menu_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Menu> ItemInCart;
  FavouritesScreen(this.ItemInCart);
  @override
  Widget build(BuildContext context) {
    if (ItemInCart.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('Cart Empty'),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: ItemInCart.length,
        itemBuilder: (context, index) {
          return   Item(
            id: ItemInCart[index].id,
            price: ItemInCart[index].price,
            title: ItemInCart[index].title,
          );
        },
      );
    }
  }
}
