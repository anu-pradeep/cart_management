import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Containersample(),
  ));
}

class Containersample extends StatelessWidget {
  const Containersample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.red, width: 10))),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          width: 50,
          height: 30,
          child: const Center(
              child: Text(
            "25",
            style: TextStyle(fontSize: 15, color: Colors.red),
          )),
        )
      ],
    );
  }
}
