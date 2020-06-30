import 'package:flutter/material.dart';
import 'package:shopping/HomeScreen/Const.dart';
import 'package:shopping/HomeScreen/CustomIcons.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 30, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        CustomIcons.menu,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      'Favorites',
                      textAlign: TextAlign.center,
                      style: headingStyle,
                    ),
                    IconButton(
                      icon: Icon(
                        CustomIcons.cart,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("Still under Development\n \nCheck HomePage", style: speakerTitleStyle),
                    ),
                  ],
                ),
              ),
            ]
        )
    );
  }
}
