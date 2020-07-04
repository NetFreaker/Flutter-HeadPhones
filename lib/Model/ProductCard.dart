import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/HomeScreen/Const.dart';
import 'package:shopping/Model/Products.dart';

class ProductCard extends StatelessWidget {
  final HeadPhone product;
  final int itemIndex;

  ProductCard({this.product, this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(642),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: ScreenUtil().setHeight(40),
                  left: ScreenUtil().setWidth(30),
                  right: ScreenUtil().setWidth(30)),
              child: Container(
                width: ScreenUtil().setWidth(620),
                height: ScreenUtil().setHeight(990),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [const Color(0xFFFFFFFF), product.color],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    boxShadow: [
                      BoxShadow(
                        color: product.color.withOpacity(0.5),
                        offset: Offset(0, 8),
                        blurRadius: 6,
                      )
                    ],
                    borderRadius: BorderRadius.circular(30)),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(45),
                            bottom: ScreenUtil().setHeight(45),
                            right: ScreenUtil().setWidth(45)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              product.title,
                              style: productTitleStyle,
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '\$ ${product.price}',
                                  style: productsubTitleStyle,
                                ),
                                Container(
                                  width: ScreenUtil().setHeight(75),
                                  height: ScreenUtil().setWidth(75),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 18,
                                      color: product.color,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(10),
            left: ScreenUtil().setWidth(20),
            child: Image.asset(
              product.image,
              width: ScreenUtil().setWidth(640),
              height: ScreenUtil().setHeight(610),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
