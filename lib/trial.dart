import 'package:flutter/material.dart';

class Containersample extends StatelessWidget {
  const Containersample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.red))
      ),
    );
  }
}
