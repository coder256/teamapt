import 'package:flutter/material.dart';
import 'package:teamapt/constants.dart' as constants;
import 'package:teamapt/screens/Details.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(constants.gray),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Wrap(
          children: [
            SizedBox(width: (wid/2) - 15, child: _product("product_1.jpg", 12, context)),
            const SizedBox(width: 10,),
            SizedBox(width: (wid/2) - 15, child: _product("product_2.png", 12, context)),
            SizedBox(width: wid, height: 20,),
            SizedBox(width: (wid/2) - 15, child: _product("product_2.png", 22, context)),
            const SizedBox(width: 10,),
            SizedBox(width: (wid/2) - 15, child: _product("product_1.jpg", 18, context)),
            SizedBox(width: wid, height: 20,),
            SizedBox(width: (wid/2) - 15, child: _product("product_1.jpg", 12, context)),
            const SizedBox(width: 10,),
            SizedBox(width: (wid/2) - 15, child: _product("product_2.png", 54, context)),
            SizedBox(width: wid, height: 20,),
          ],
        ),
      ),
    );
  }

  Widget _product(String image, int price, BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
          Navigator.of(context).push(_createRoute(context));
        },
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
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text("Shirt", style: TextStyle(color: Colors.black38),),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("Essentials Men's Short-sleeve Crewneck T-Shirt",
              style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Color(constants.orange), size: 20,),
                  const Text("4.9 | 2356", style: TextStyle(color: Colors.black38, fontSize: 12),),
                  const Spacer(),
                  Text("\$${price.toString()}.00", style: const TextStyle(color: Color(constants.primaryColor), fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Route _createRoute( BuildContext context) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const Details(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          var curve = Curves.ease;
          var curveTween = CurveTween(curve: curve);
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);
          final curveAnimation = CurvedAnimation(parent: animation, curve: curve);

          return SlideTransition(
            position: tween.animate(curveAnimation),
            child: child,
          );
        });
  }
}
