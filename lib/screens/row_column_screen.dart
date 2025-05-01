import 'package:flutter/material.dart';

class RowColumnScreen extends StatefulWidget {
  const RowColumnScreen({super.key});

  @override
  State<RowColumnScreen> createState() => _RowColumnScreenState();
}

class _RowColumnScreenState extends State<RowColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Image.asset("assets/images/1.jpg"),
          ),
          Expanded(
            flex: 1,
            child: Image.asset("assets/images/2.jpg"),
          ),
          Expanded(
            child: Image.asset("assets/images/3.jpg"),
          ),
        ],
      ),
    );
  }
}
