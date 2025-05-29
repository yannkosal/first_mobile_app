import 'package:flutter/material.dart';
import 'package:flutter_app/model/employee.dart';

// ignore: must_be_immutable
class ListViewDetailScreen extends StatefulWidget {
  Employee? employee;
  ListViewDetailScreen({super.key, required this.employee});

  @override
  State<ListViewDetailScreen> createState() => _ListViewDetailScreenState();
}

class _ListViewDetailScreenState extends State<ListViewDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(),
        backgroundColor: Colors.blue,
        title: Text("${widget.employee?.name}"),
      ),
    );
  }
}
