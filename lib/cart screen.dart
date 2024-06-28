import 'package:cart_management/Custom%20Widgets/custom%20appbar.dart';
import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home: CartPage(),));}
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {

    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CommonAppbar(tabtext1: "PRODUCTS",
            tabtext2: "MY CART"),
        body: TabBarView(children: [
          Column(
            children: [
              ListTile(title: Text("data"),
              subtitle: Text("data"),)
            ],
          )
        ],),
      ),

    );
  }
}
