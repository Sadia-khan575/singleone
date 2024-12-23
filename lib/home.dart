import 'package:flutter/material.dart';

class BoolSelected extends StatefulWidget {
  BoolSelected({super.key});

  @override
  State<BoolSelected> createState() => _BoolSelectedState();
}

class _BoolSelectedState extends State<BoolSelected> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected; // Toggles the value of selected
            });
          },
          child: Container(
            height: 250,
            width: 250,
            color: selected ? Colors.black : Colors.green,
            child: Center(
              child: Text(
                selected ? 'selected' : 'unselected',
                style: TextStyle(
                  color: selected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
