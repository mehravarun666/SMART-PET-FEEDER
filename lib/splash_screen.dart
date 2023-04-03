import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:petfeeder/s&l_screen.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const slscreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/Splash.jpg',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 30.0,
              ),
              const SpinKitSquareCircle(
                color: Colors.white,
                size: 50.0,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text("SMART PET FEEDER",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text("Powered by PHANTOM TROUPE",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    ));
  }
}
