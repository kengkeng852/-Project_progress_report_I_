import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutterproject/pages/options/cheap.dart';
import 'package:flutterproject/pages/options/worldwide.dart';
import 'package:flutterproject/pages/options/highest.dart';
import 'package:flutterproject/pages/restaurantpage/res1.dart';
import 'package:flutterproject/pages/options/nearest.dart';
import 'package:flutterproject/widgets/restaurant_cardlocal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override 
  State<HomePage> createState() => _HomePage();
}


class _HomePage extends State<HomePage> {
  final _textController = TextEditingController();
  int _selectedIndex = 0;   

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: appBar(),
    body: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        resOptions(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xffD9D9D9),
              padding: const EdgeInsets.only(top:10, left:10),
                child: Row(   
                  children: [
                    const Text('Suggest for you: '), // Keep the Text
                  ],
                ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child :Container(
                color: Color(0xffD9D9D9),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column( 
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const res1()), // Or your detailed page
                          );
                        },
                        child: RestaurantCard(
                           title: 'Hua Seng Hong (Salaya)',
                           rating: '3.7 (125 reviews)',
                           cookTime: '10:00 - 18:00 everyday',
                           image: 'assets/images/Hua.png',
                      ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const res1()), // Or your detailed page
                          );
                        },
                        child: RestaurantCard(
                           title: 'SUSHIRO (The Mall Thrapa)',
                           rating: '3.8 (105 reviews)',
                           cookTime: '10:00 - 21:00 everyday',
                           image: 'images/sushiro.jpeg',
                      ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const res1()), // Or your detailed page
                          );
                        },
                        child: RestaurantCard(
                           title: 'McDonald`s มหิดล ศาลายา',
                           rating: '2.5 (3 reviews)',
                           cookTime: '24hr everyday',
                           image: 'images/Mc.png',
                      ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const res1()), // Or your detailed page
                          );
                        },
                        child: RestaurantCard(
                           title: 'Tsuru (Central World)',
                           rating: '4.2 (300 reviews)',
                           cookTime: '10:30 - 20:30 everyday',
                           image: 'images/tsuru.png',
                      ),
                      ),
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ],
    ),
    ),bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  backgroundColor: Color(0xffD9D9D9),
  onTap: (newIndex) {
    setState(() => _selectedIndex = newIndex);
    switch (newIndex) {
      case 0:  // 'Home' icon
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()), 
        );
        break; 
      case 1:  // 'Saved' icon
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()), 
        );
        break;
      case 2: // 'Me' icon
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()), 
        );
        break;
      default: 
        // Optional, in case you want a default action
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())); 
    }
  },
  items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Me',
          ),
        ],
),

    );
}
  AppBar appBar() {
    return AppBar(
      backgroundColor: Color(0xffD9D9D9),
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
        margin: const EdgeInsets.all(10),
        child: Image.asset('assets/images/map.png'),
      ),
      title: Column(
        children: [
          const Text(
            'Name of restaurant',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 0),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue, 
              borderRadius: BorderRadius.circular(20),
            ),
            child:  TextField(
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFDFED2),
                hintText: 'Search..',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Container resOptions() {
  return Container(
    height: 230,
    color: Color(0xFF355197),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const nearest()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10, top: 15),
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'The Nearest Restaurants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('images/near.png', width: 70, height: 70),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const cheap()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 20, top: 15),
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child:
                        Text(
                          'The Cheapest Restaurants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('images/cheap.png', width: 70, height: 70),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const worldwide()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10, top: 15, bottom: 5),
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Worldwide Restaurants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('images/favourite.png', width: 70, height: 70),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const highest()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 20, top: 15),
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'The Highest Review Restaurants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('images/highest.png', width: 70, height: 70),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ],
          ),
        ],
      ),
    ),
  );
} 
}



