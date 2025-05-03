import 'package:flutter/material.dart';
import 'package:flutter_app/screens/container_screen.dart';
import 'package:flutter_app/screens/employee/list_view_screen.dart';
import 'package:flutter_app/screens/row_column_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewScreen(),
    );
  }
}
