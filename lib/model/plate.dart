import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 07-Mar-21 at 04:48.***
///****************************************************
class Plate {
  String name;
  String shortDescription;
  String imagePath;
  String price;
  String description;

  Plate(
      {required this.name,
        required this.shortDescription,
        required this.imagePath,
        required this.price,
        required this.description});
}

class DummyPlates {
  static List<Plate> plates = [
    Plate(
        name: 'Grilled beef',
        shortDescription: 'Peruvian food',
        imagePath: 'assets/images/peruvian_grilled_beef.jpg',
        price: '\$ 10.00',
        description: 'Grilled beaf steak and potatoes on plate isolated'),
    Plate(
        name: 'Caesar salad',
        shortDescription: '',
        imagePath: 'assets/images/chicken_caesar_salad.jpg',
        price: '\$ 8.00',
        description: 'Green salad of romaine lettuce and croutons with chicken'),
  ];
}