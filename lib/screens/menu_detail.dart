import 'package:flutter/material.dart';
import 'package:intern/dummy_data.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/menu-deatil';
  final Function toggleFavourite, isFavourite;
  DetailScreen(this.toggleFavourite, this.isFavourite);

  Widget buildSectionTitle(String text, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }


  @override
  Widget build(BuildContext context) {
    final Id = ModalRoute.of(context)!.settings.arguments as String;
    final   ItemSelected = DUMMY_MENUS.firstWhere((m) => m.id == Id);

    return Scaffold(
      appBar: AppBar(
        title: Text('${  ItemSelected.title}'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 100,
          decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10,),),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            Text('${  ItemSelected.title}'),
            SizedBox(height: 10,),
            Text('€ ${  ItemSelected.price}'),
          ],),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavourite(Id) ? Icons.remove_shopping_cart_sharp : Icons.add_shopping_cart),
        onPressed: () {
          toggleFavourite(Id);
          showSnack(context,isFavourite(Id) ? added : removed);
        },
      ),
    );
  }
  void showSnack(BuildContext context,String text){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text),duration: const Duration(seconds: 2),),);
  }
  final String added = "Item added to cart";
  final String removed = "Item removed from cart";
}
