import 'package:flutter/material.dart';
import 'package:torath/custom_drawer/home_drawer.dart';
import 'package:torath/main.dart';

class Articels extends StatelessWidget {
  const Articels({Key? key, required this.data}) : super(key: key);

  // Declare a field that holds the Todo.
  final data;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff12122c),
      appBar: AppBar(
        backgroundColor: Color(0xff212040),
        title: Text(
          data['title'],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      drawer: HomeDrawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
