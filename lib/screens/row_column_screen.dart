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
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Image.asset("assets/images/1.jpg", height: 200,), Text("Hello World"),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0, right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.heart_broken),
                        Icon(Icons.share),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
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
