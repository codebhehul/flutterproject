import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "codewithbhehul";

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency Converter"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days Flutter with $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
