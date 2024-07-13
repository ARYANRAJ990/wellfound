import 'package:assignment/Bottom%20nav%20page/navigation_page.dart';
import 'package:assignment/Categories/Categories_page.dart';
import 'package:assignment/promotion/promotion_page.dart';
import 'package:flutter/material.dart';
import 'package:assignment/Proucts/buying.dart';
import 'package:assignment/Proucts/MyProducts.dart';
import 'promotion/promotion_images.dart';
import 'package:assignment/Proucts/Gridview.dart';
import 'package:assignment/Categories/Categories_details.dart';

class Feed extends StatefulWidget {
  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int index = 0;
  int indexT=0;
  int Index = 1;
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: _isSearching
            ? TextField(
          controller: _searchController,
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Search for products...',
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.black),
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'E-Commerce App',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  _isSearching = true;
                });
              },
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              color: Colors.cyan,
            ),
          ],
        ),
        actions: _isSearching
            ? [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              setState(() {
                _isSearching = false;
                _searchController.clear();
              });
            },
          ),
        ] : [],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextPage(imagePath: imagePaths[index], text: texts[index]),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 320, // Width of each container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFFFE680),
                        image: DecorationImage(
                          image: AssetImage(imagePaths[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              color: Colors.black.withOpacity(0.6),
                              child: Text(
                                texts[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Nextpage(imagePathss: imagePathss[index], textss: textss[index]),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 80, // Width of each container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[50],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              image: DecorationImage(
                                image: AssetImage(imagePathss[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(height: 1),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                textss[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 100 / 140,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: myProduct().noodles.length,
                  itemBuilder: (context, index) {
                    ProductCard(product: myProduct().noodles[index]);
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                product: myProduct().noodles[index])),
                      ),
                      child: ProductCard(product: myProduct().noodles[index]),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.black,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
          switch (selectedIndex) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bottom()),
              );
              break;
            case 1:
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Bottom()),
             );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bottom()),
              );
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.electric_bolt),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
          ),
        ],
      ),
    );
  }
}
