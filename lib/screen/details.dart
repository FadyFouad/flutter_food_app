import 'package:flutter/material.dart';
import 'package:flutter_food_app/model/plate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///****************************************************
///*** Created by Fady Fouad on 08-Mar-21 at 03:28.***
///****************************************************

class Details extends StatelessWidget {
  final Plate plate;

  Details({required this.plate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          'Details',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          color: Colors.white, onPressed: () {
          Navigator.of(context).pop();
        },
        ),

        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: CircleAvatar(
              maxRadius: 15.0,
              minRadius: 15.0,
              backgroundColor: Colors.black.withOpacity(0.5),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          plate.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24.0),
                        ),
                        Icon(FontAwesomeIcons.heart),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(flex: 4, child: Text(plate.shortDescription)),
                        Expanded(child: Container()),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Hero(
                        tag: plate.imagePath,
                        child: Image.asset(plate.imagePath)),
                    SizedBox(
                      height: 24.0,
                    ),
                    Container(
                      height: 30.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black),
                            child: Text('Small',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white),
                            child: Text('Medium',
                                style: TextStyle(color: Colors.black)),
                          ),
                          Container(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white),
                            child: Text('Big',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Before',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            '\$ 30.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            plate.price,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            '50 % Disc.',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        height: 40.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: Text('Buy'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}