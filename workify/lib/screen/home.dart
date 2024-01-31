import 'package:flutter/material.dart';
import 'search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WorkiFy"),
      ),
      body: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.blue,
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () => showSearch(context: context, delegate: Search()),
      ),
    );
  }
}