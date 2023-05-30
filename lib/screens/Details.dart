import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:teamapt/constants.dart' as constants;

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black54,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: _appbar(),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _imager(context),
                    const SizedBox(height: 10,),
                    Row(
                      children: const [
                        Icon(Icons.house_siding_sharp, color: constants.blackLight,),
                        SizedBox(width: 5,),
                        Text("tokobaju.id", style: TextStyle(color: constants.blackLight),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Text("Essential Men's Short Sleeve Crewneck T-Shirt",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Color(constants.orange),),
                        SizedBox(width: 15,),
                        Text("4.9 Ratings", style: TextStyle(color: constants.blackLight)),
                        SizedBox(width: 15,),
                        Icon(Icons.circle, size: 8, color: constants.blackLight,),
                        SizedBox(width: 15,),
                        Text("2.3k+ Reviews", style: TextStyle(color: constants.blackLight)),
                        SizedBox(width: 15,),
                        Icon(Icons.circle, size: 8, color: constants.blackLight,),
                        SizedBox(width: 15,),
                        Text("2.9k + Sold", style: TextStyle(color: constants.blackLight)),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            const TabBar(
                              labelColor: Color(constants.primaryColor),
                              tabs: [
                                Tab(text: "About Item"),
                                Tab(text: "Reviews",),
                              ],
                            ),
                            Container(
                              color: const Color(constants.gray),
                              height: 100,
                              child: TabBarView(
                                children: [
                                  Row(
                                    children: [
                                      const Text("Brand:", style: TextStyle(color: constants.blackLight),),
                                      const SizedBox(width: 10,),
                                      const Text("ChArmKpr", style: TextStyle(fontWeight: FontWeight.bold),),
                                      SizedBox(width: MediaQuery.of(context).size.width / 4,),
                                      const Text("Color:", style: TextStyle(color: constants.blackLight),),
                                      const SizedBox(width: 10,),
                                      const Text("Apricot", style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  const Icon(Icons.image),
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Total Price", style: TextStyle(fontSize: 12, color: Colors.black45),),
                      SizedBox(height: 5,),
                      Text("\$18.00", style: TextStyle(fontSize: 20, color: Color(constants.primaryColor), fontWeight: FontWeight.bold),)
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(constants.primaryColor),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: const [
                          Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                          Text("1", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(constants.blue),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                      child: Text("Buy Now", style: TextStyle(color: Colors.white),),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _appbar() {
    return Row(
      children: const [
        Spacer(),
        Icon(Icons.favorite_border_outlined, color: Colors.black54,),
        SizedBox(width: 20),
        Icon(Icons.share_rounded, color: Colors.black54),
        SizedBox(width: 20),
        badges.Badge(
          badgeStyle: badges.BadgeStyle(
            badgeColor: Color(constants.pink)
          ),
          badgeContent: Text("1"),
          child: Icon(Icons.shopping_bag_outlined, color: Colors.black54),
        )
      ],
    );
  }
  
  Widget _imager(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    
    return Stack(
      children: [
        SizedBox(
            height: 400,
            width: wid,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/product_1.jpg",
                      ),
                      fit: BoxFit.fill)),
            )
        ),
        Positioned(
          left: 15,
          top: 20,
          child: Column(
            children: [
              SizedBox(
                height: 45,
                width: 40,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/product_3.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 45,
                width: 40,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/product_2.png",
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 45,
                width: 40,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
