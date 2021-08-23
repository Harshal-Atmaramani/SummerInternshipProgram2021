import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_11/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // String _lang= "English";
    return Scaffold(
      body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(330, 150),
                topRight: Radius.elliptical(330, 150)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.redAccent, Color(0xFFEA4335)],
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        'assets/images/linux_world_logo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      child: Text(
                        "Summer Internship Program 2021",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: height*0.04,
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      child: Text(
                        "Task 11 ",
                        style: TextStyle(
                            fontSize: height*0.05,
                            color: Colors.yellowAccent, fontWeight: FontWeight.w600),
                      ),
                    ),

                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ))),
    );
  }
}
