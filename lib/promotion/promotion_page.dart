import 'package:flutter/material.dart';
class NextPage extends StatelessWidget {
  final String imagePath;
  final String text;

  NextPage({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text('Image Details')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 20),
          Text(
            text,
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
