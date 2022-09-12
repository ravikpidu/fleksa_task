import 'package:flutter/material.dart';
import 'package:intern/models/category.dart';
import 'package:intern/models/menu.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Mittags Angebot',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Angebot',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Kindergeri chte',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Salate',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Pizza',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Pizzabrötc hen & Co.',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Wunsch Pizza',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Pasta',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Sandwiche',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Burger',
    color: Colors.teal,
  ),
  // Category(
  //   id: 'c11',
  //   title: 'Cheesy Fries',
  //   color: Colors.purple,
  // ),
  // Category(
  //   id: 'c12',
  //   title: 'Snacks',
  //   color: Colors.red,
  // ),
  // Category(
  //   id: 'c13',
  //   title: 'Beilagen',
  //   color: Colors.orange,
  // ),
  // Category(
  //   id: 'c14',
  //   title: 'Saucen - Dressings',
  //   color: Colors.amber,
  // ),
  // Category(
  //   id: 'c15',
  //   title: 'Pizza',
  //   color: Colors.blue,
  // ),
  // Category(
  //   id: 'c16',
  //   title: 'Pizzabrötc hen & Co.',
  //   color: Colors.green,
  // ),
  // Category(
  //   id: 'c17',
  //   title: 'Wunsch Pizza',
  //   color: Colors.lightBlue,
  // ),
  // Category(
  //   id: 'c18',
  //   title: 'Pasta',
  //   color: Colors.lightGreen,
  // ),
  // Category(
  //   id: 'c19',
  //   title: 'Sandwiche',
  //   color: Colors.pink,
  // ),
  // Category(
  //   id: 'c20',
  //   title: 'Desserts',
  //   color: Colors.teal,
  // ),
  // Category(
  //   id: 'c21',
  //   title: 'Alkoholfre Getränke',
  //   color: Colors.teal,
  // ),
  // Category(
  //   id: 'c22',
  //   title: 'pos test cat',
  //   color: Colors.teal,
  // ),
];

const DUMMY_MENUS = const [
  Menu(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Pizza Mittagsan',
    price: '6.99',
  ),
  Menu(
    id: 'm2',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Salat Mittagsan nehnt',
    price: '6',

  ),
  Menu(
    id: 'm3',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Burger Mittagsan nahot',
    price: '5.9',
  ),
  Menu(
    id: 'm4',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Cheesy Fries Mittagsan',
    price: '4.9',
  ),

  Menu(
    id: 'm5',
    categories: [
      'c2',
    ],
    title: 'Schnitzel menů',
    price: '14.9',
  ),
  Menu(
    id: 'm5',
    categories: [
      'c2',
    ],
    title: 'Mini Angebot',
    price: '17.9',
  ),
  Menu(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'Smart Angebot',
    price: '12.95',
  ),
  Menu(
    id: 'm7',
    categories: [
      'c2',
    ],
    title: 'Maxi Angebot',
    price: '33.9',
  ),
  Menu(
    id: 'm8',
    categories: [
      'c2',
    ],
    title: 'Pasta Angebot',
    price: '19.9',
  ),
  Menu(
    id: 'm9',
    categories: [
      'c2',
    ],
    title: 'Burger Angebot',
    price: '11.9',
  ),
  Menu(
    id: 'm10',
    categories: [
      'c2',
    ],
    title: 'Burger Pizza Angebot',
    price: '14.9',
  ),

  Menu(
    id: 'm11',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Kids Menu',
    price: '7',
  ),
  Menu(
    id: 'm12',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Pasta Baby Fisch ',
    price:'5.2',
  ),
  Menu(
    id: 'm13',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Pasta Napoli ',
    price:'5.2',
  ),
  Menu(
    id: 'm14',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Pasta Bolognese ',
    price: '5.78',
  ),
  Menu(
    id: 'm15',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Pasta Alfredo ',
    price: '5.2',
  ),


  Menu(
    id: 'm16',
    categories: [
      'c4',
    ],
    title: 'Grüner Salat',
    price: '5.9',
  ),
  Menu(
    id: 'm17',
    categories: [
      'c4',
    ],
    title: 'Salat Green Garden ',
    price: '7.9',
  ),
  Menu(
    id: 'm18',
    categories: [
      'c4',
    ],
    title: 'Gurkensal',
    price: '6.9',
  ),
  Menu(
    id: 'm19',
    categories: [
      'c4',
    ],
    title: 'Salat Nizza',
    price: '8.9',
  ),
  Menu(
    id: 'm20',
    categories: [
      'c4',
    ],
    title: 'Tomatens alat ',
    price: '6.9',
  ),
  Menu(
    id: 'm21',
    categories: [
      'c4',
    ],
    title: 'Spezialsal ',
    price: '9.9',
  ),
  Menu(
    id: 'm22',
    categories: [
      'c4',
    ],
    title: 'Salat Greek',
    price: '8.9',
  ),
  Menu(
    id: 'm23',
    categories: [
      'c4',
    ],
    title: 'Salat Florida',
    price: '10.9',
  ),

  Menu(
    id: 'm24',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Pizza Salami ',
    price: '5.05',
  ),
  Menu(
    id: 'm25',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Pizza Margherit',
    price: '5.35',
  ),
  Menu(
    id: 'm26',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Pizza Peperoniw',
    price: '7.05',
  ),
  Menu(
    id: 'm27',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Pizzabrot',
    price: '4.65',
  ),
  Menu(
    id: 'm28',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Pizza Funghi',
    price: '9.05',
  ),

  Menu(
    id: 'm29',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Pizza Tonno',
    price: '24.0',
  ),

  Menu(
    id: 'm30',
    categories: [
      'c7',
    ],
    title: 'Pizza Broadway',
    price: '3.20',
  ),

  Menu(
    id: 'm31',
    categories: [
      'c8',
    ],
    title: 'Pizza Hawaii',
    price: '6.35',
  ),

  Menu(
    id: 'm32',
    categories: [
      'c9',
    ],
    title: 'Schnitzel New-York',
    price: '4.95',
  ),

  Menu(
    id: 'm33',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Beilagen',
    price: '7.30',
  ),
];
