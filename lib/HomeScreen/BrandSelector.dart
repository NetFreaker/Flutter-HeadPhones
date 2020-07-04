import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping/HomeScreen/Const.dart';

class BrandSelector extends StatefulWidget {
  final List<String> brands;

  BrandSelector({@required this.brands});

  @override
  _BrandSelectorState createState() => _BrandSelectorState();
}

class _BrandSelectorState extends State<BrandSelector> {
  int currentIndex = 0;
  bool isSelected;

  List<Widget> _headsetBrands() {
    return widget.brands.map((brand) {
      var index = widget.brands.indexOf(brand);
      isSelected = currentIndex == index;
      return Padding(
        padding: EdgeInsets.only(left: 20, top: 20),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Text(
            brand,
            style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey,
                fontSize: isSelected ? 22 : 16,
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.w500),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _headsetBrands(),
    );
  }
}
