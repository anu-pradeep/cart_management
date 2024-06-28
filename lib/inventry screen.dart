import 'package:cart_management/Custom%20Widgets/Custom%20Cards.dart';
import 'package:flutter/material.dart';

import 'Custom Widgets/custom appbar.dart';
void main(){
  runApp(const MaterialApp(home: InventryScreen(),));
}
class InventryScreen extends StatefulWidget {
  const InventryScreen({super.key});

  @override
  State<InventryScreen> createState() => _InventryScreenState();
}

class _InventryScreenState extends State<InventryScreen> {
  @override
  Widget build(BuildContext context) {
    return  const DefaultTabController(length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: CommonAppbar(tabtext1: 'TODAY JOBS', tabtext2: 'COMPLETED',),
          body: SingleChildScrollView(
          child: Column(
            children: [
              CardsCustomized(),
              CardsCustomized(),
            ],
          ),
          )

        )
    );
  }
}
