import 'package:flutter/rendering.dart';

class HeadPhone {
  String image;
  String title;
  Color color,colors;
  int price;
  HeadPhone({this.color, this.image, this.title,this.colors,this.price});
}

List<HeadPhone> products = [
  HeadPhone(image: "assets/images/red.png", title: 'Pampus', color: Color(0XFFd53d3b),price: 50),
  HeadPhone(image: "assets/images/silver.png", title: "Plattan TLE", color: Color(0XFFb064a0),price: 60),
  HeadPhone(image: "assets/images/peach.png", title: "Plattan 2", color: Color(0XFF454c40),price: 56),
];
