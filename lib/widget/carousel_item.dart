import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 04-Jun-21 at 05:02.***
///****************************************************

class CarouselItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageAssetPath;
  final String price;
  final String description;
  final bool isActive;

  CarouselItem(
      {required this.title,
        required this.isActive,
        required this.subtitle,
        required this.imageAssetPath,
        required this.price,
        required this.description});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.symmetric(vertical: isActive ? 0 : 60),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // Food title
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                ),
                SizedBox(height: 8.0),
                // Food short description
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                //Food image path
                imageAssetPath != null
                    ? Image.asset(imageAssetPath)
                    : Container(
                  height: 200.0,
                ),
                SizedBox(height: 8.0),
                Text(
                  price,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                      child: Center(
                        child: Text('Buy'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}