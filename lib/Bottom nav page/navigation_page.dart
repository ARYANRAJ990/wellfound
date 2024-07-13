import 'package:flutter/material.dart';
class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text('Thanks',style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 250,
                child: Image.asset('images/groot.jpg'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Hope You Like It💖')
          ],
        ),
    );
  }
}
