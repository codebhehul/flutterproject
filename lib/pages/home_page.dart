import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "codewithbhehul";

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text("Book Store App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("Welcome to $days Flutter with $name"),
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
    );
  }
}
