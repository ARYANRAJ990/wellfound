import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment/Proucts/product.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.cyan,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: SizedBox(
                  height: 130,
                  width: 130,
                  child: Image.asset(
                    widget.product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      widget.product.name,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\₹${widget.product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: IconButton(
                key: ValueKey<bool>(isFavorite),
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
