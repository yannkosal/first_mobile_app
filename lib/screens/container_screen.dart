import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 30),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(width: 10, color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(200),),
          ),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              "Home Screen",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
