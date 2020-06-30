import 'package:flutter/material.dart';
import 'package:shopping/HomeScreen/BrandSelector.dart';
import 'package:shopping/HomeScreen/Const.dart';
import 'package:shopping/HomeScreen/CustomIcons.dart';
import 'package:shopping/Model/ProductCard.dart';
import 'package:shopping/Model/Products.dart';


class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

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
                  'HeadPhones',
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
          BrandSelector(brands: ['Bose', 'Boat', 'Sony', 'SkullCandy']),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) =>
                    ProductCard(itemIndex: index, product: products[index])),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: double.infinity,
              height: 160,
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text("Speakers", style: speakerTitleStyle),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  const Color(0xFF385378),
                                  const Color(0xFFFFFFFF)
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 6),
                                  blurRadius: 6)
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 16, top: 26),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Rålis", style: productTitleStyle),
                              SizedBox(
                                height: 4,
                              ),
                              Text("Bluetooth Speaker",
                                  style: speakerdescStyle),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: -5,
                    child: Image.asset("assets/images/speaker.png",
                        fit: BoxFit.cover, width: 150, height: 160),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
