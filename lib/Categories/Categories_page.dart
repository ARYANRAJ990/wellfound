import 'package:flutter/material.dart';
class Nextpage extends StatelessWidget {

  final String imagePathss;
  final String textss;

  Nextpage({required this.imagePathss, required this.textss});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('Image Details')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePathss),
          SizedBox(height: 20),
          Text(
            textss,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
