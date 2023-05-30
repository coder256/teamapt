import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart' as badges;
import 'package:teamapt/constants.dart' as constants;
import 'package:teamapt/widgets/Products2.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.shopping_cart, color: Colors.black54,)
        ],
        title: _appBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/banner.png"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: SizedBox(height: 90, child: _menu()),
            ),
            Container(
              color: const Color(constants.gray),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 10, top: 25, bottom: 15 ),
                child: Row(
                  children: const [
                    Text("Best Sale Product", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Spacer(),
                    Text("See more", style: TextStyle(color: Color(constants.primaryColor)),)
                  ],
                ),
              ),
            ),
            Products2()
            // Expanded(child: _products())
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 48,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                initialValue: 'Search',
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                    badgeColor: Color(0xffe35b87)
                ),
                badgeContent: Text('1', style: TextStyle(color: Colors.white),),
                child: Icon(Icons.shopping_bag_outlined, color: Colors.black54,),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                    badgeColor: Color(0xffe35b87)
                ),
                badgeContent: SizedBox(
                    height: 10,
                    width: 10,
                    child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text('9+', style: TextStyle(color: Colors.white),)
                    )
                ),
                child: Icon(Icons.chat_outlined, color: Colors.black54,),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _menu() {
    return GridView.count(
      crossAxisCount: 5,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(constants.gray),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: IconButton(
                  onPressed: (){
                  },
                  icon: const Icon(Icons.dashboard_customize_outlined)
              ),
            ),
            const SizedBox(height: 10,),
            const Text("Category", style: TextStyle(color: Colors.black54),)
          ],
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(constants.gray),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: IconButton(
                  onPressed: (){
                  },
                  icon: const Icon(Icons.airplanemode_on_outlined)
              ),
            ),
            const SizedBox(height: 10,),
            const Text("Flight", style: TextStyle(color: Colors.black54),)
          ],
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(constants.gray),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: IconButton(
                  onPressed: (){
                  },
                  icon: const Icon(Icons.content_paste_rounded)
              ),
            ),
            const SizedBox(height: 10,),
            const Text("Bill", style: TextStyle(color: Colors.black54),)
          ],
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(constants.gray),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: IconButton(
                  onPressed: (){
                  },
                  icon: const Icon(Icons.language)
              ),
            ),
            const SizedBox(height: 10,),
            const Text("Data plan", style: TextStyle(color: Colors.black54),)
          ],
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(constants.gray),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: IconButton(
                  onPressed: (){
                  },
                  icon: const Icon(Icons.paid_outlined)
              ),
            ),
            const SizedBox(height: 10,),
            const Text("Top Up", style: TextStyle(color: Colors.black54),)
          ],
        ),
      ],
    );
  }

  Widget _products() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          leading: Icon(Icons.flight),
          title: Text("kndkajndka"),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text("kndkajndka"),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text("kndkajndka"),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text("kndkajndka"),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text("kndkajndka"),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text("kndkajndka"),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text("kndkajndka"),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text("kndkajndka"),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text("kndkajndka"),
        ),
      ],
    );
  }
}
