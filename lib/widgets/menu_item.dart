import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern/models/menu.dart';
import 'package:intern/screens/menu_detail.dart';

class Item extends StatelessWidget {
  final String id, title, price;
  final _random = Random();

  Item({
    required this.id,
    required this.price,
    required this.title,
  });

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(DetailScreen.routeName, arguments: id)
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }




  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        color: Color.fromARGB(_random.nextInt(256), _random.nextInt(256),
            _random.nextInt(256), _random.nextInt(256)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  // child: Image.network(
                  //   imageUrl,
                  //   height: 250,
                  //   width: double.infinity,
                  //   fit: BoxFit.cover,
                  // ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(08.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(
                    children: [
                      Text(title,style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('€ $price',style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
