import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment/Proucts/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.cyan,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 400,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                      product.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                        fontSize: 31,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description :- ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            product.description,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.89,
                              color: Color(0xFFABABAB),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 50.0),
                        child: Text(
                          'Price :-  ',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.cyan,
                          ),
                        ),
                      ),
                      Text(
                        "\₹${product.price}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 60),
                  Center(
                    child: SizedBox(
                      height: 65,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor:  Colors.black,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: Text(
                          'Contact Seller',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 19.33,
                              color: Colors.cyan),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
