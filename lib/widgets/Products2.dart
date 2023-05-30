import 'package:flutter/material.dart';
import 'package:teamapt/constants.dart' as constants;

class Products2 extends StatelessWidget {
  const Products2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;

    return Container(
      color: Color(constants.gray),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Wrap(
          children: [
            SizedBox(width: (wid/2) - 15, child: _product("product_1.jpg", 12)),
            SizedBox(width: 10,),
            SizedBox(width: (wid/2) - 15, child: _product("product_2.png", 12)),
            SizedBox(width: wid, height: 20,),
            _product("product_1.jpg", 12),
            _product("product_1.jpg", 12),
            _product("product_1.jpg", 12),
            _product("product_1.jpg", 12),
          ],
            ),
      ),
    );
  }

  Widget _product(String image, int price) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Image(
                  image: AssetImage("assets/images/$image"),
                  fit: BoxFit.fill,
                ),
              ),
              const Positioned(
                top: 5,
                right: 5,
                child: Icon(Icons.favorite_border_outlined),
              ),
            ],
          ),
          Text("Shirt")
        ],
      ),
    );
  }
}
