import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        padding: EdgeInsets.symmetric(vertical: 20),
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.call, size: 64,),
                Text("Call")
              ],
            ),
            Column(
              children: [
                Icon(Icons.route, size: 64,),
                Text("Call")
              ],
            ),
            Column(
              children: [
                Icon(Icons.share, size: 64,),
                Text("Call")
              ],
            )
          ],
        ),
      )
    );
  }
}
