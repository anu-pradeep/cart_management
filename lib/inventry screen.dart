import 'package:cart_management/Custom%20Widgets/Custom%20Cards.dart';
import 'package:flutter/material.dart';

import 'Custom Widgets/custom appbar.dart';

class InventryScreen extends StatefulWidget {
  const InventryScreen({super.key});

  @override
  State<InventryScreen> createState() => _InventryScreenState();
}

class _InventryScreenState extends State<InventryScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CommonAppbar(
          tabtext1: 'TODAY JOBS',
          tabtext2: 'COMPLETED',
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CardsCustomized(),
                  // SizedBox(height: 05,width: 40,),
                  CardsCustomized(),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  CardsCustomized(),
                  CardsCustomized(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
