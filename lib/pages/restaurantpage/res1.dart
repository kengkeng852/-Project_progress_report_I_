import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutterproject/pages/options/cheap.dart';
import 'package:flutterproject/pages/home.dart';
import 'package:flutterproject/pages/options/nearest.dart';

class res1 extends StatefulWidget {
  const res1({Key? key}) : super(key: key);
  @override 
  State<res1> createState() => _res1();
}

class _res1 extends State<res1> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: appBar(),
    body: Container(
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/huaseng.jpeg', height:220, width:520,fit: BoxFit.cover, ),
           Positioned(
            left: 0,
            child: Container(
              color: Color(0xFF355197),
              height: 689,
              padding: EdgeInsets.all(10),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding( // Add padding here
                    padding: const EdgeInsets.all(5), // Example padding
                    child: Text(
                      'ฮั่วเซ่งฮง (Hua Seng Hong) ศาลายา',
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                  ),
                  Padding( // Add padding here
                    padding: const EdgeInsets.all(5), // Example padding
                    child: Row(
                      children: [
                        Icon(Icons.star),
                        Text('3.7', style: TextStyle(fontSize: 15, color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding( // Add padding here
                    padding: const EdgeInsets.all(5), // Example padding
                    child: Text(
                      "500-1000 Baht",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                       Padding( // Add padding around the first image
                        padding: const EdgeInsets.all(5), // Example padding
                        child: Image.asset('images/pork.png', height: 220, width: 230, fit: BoxFit.cover),),
                        Padding( // Add padding around the second image
                        padding: const EdgeInsets.all(5), // Example padding
                        child: Image.asset('images/crab.jpeg', height: 220, width: 230, fit: BoxFit.cover),),
                    ],
                  ),
                  Padding( // Add padding here
                    padding: const EdgeInsets.all(5), // Example padding
                    child: Text(
                      'Map',
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                  ),
                  Padding( // Add padding around the second image
                        padding: const EdgeInsets.all(5), // Example padding
                        child: Image.asset('images/mappic.png', height:220, width:520,fit: BoxFit.cover)
                  ),
              
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

AppBar appBar() {
    return AppBar(
      backgroundColor: const Color(0xFF355197),
      leading: InkWell( 
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const nearest()), 
          );
        },
        child: Row(   
          children: [
            Image.asset('images/arL.png', height: 30,),
          ],
        ),
      ),
       
    );
}


}