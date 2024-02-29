import 'package:flutter/material.dart';
import 'package:flutterproject/pages/screen/login.dart';

class startScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container( 
        height: 1000,
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration( 
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.blue[50]!], // Your desired gradient colors
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to\nTuesdayMenu",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.asset(
                "assets/images/logoTues.png",
                height: 150,
                width: 150,
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.blueAccent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 18, color: Colors.white), 
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

