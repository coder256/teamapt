import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:teamapt/constants.dart' as constants;

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /*appBar: AppBar(
        title: Text("Wallet page", style: TextStyle(color: Color(constants.primaryColor)),),
        backgroundColor: Colors.white,
      ),*/
      body: Center(
        child: Text("Wallet Page", style: TextStyle(fontSize: 25),),
      ),
    );
  }

}
