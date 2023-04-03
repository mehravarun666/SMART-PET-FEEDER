import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petfeeder/elements/button.dart';
import 'package:petfeeder/home.dart';
import 'package:petfeeder/loginPage.dart';
import 'package:petfeeder/signup.dart';


class slscreen extends StatefulWidget {
  const slscreen({Key? key}) : super(key: key);

  @override
  State<slscreen> createState() => _slscreenState();
}

class _slscreenState extends State<slscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: SizedBox(
                width: 400,
                height: 400,
                child: Image.asset(
                  'assets/images/feed_me.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: buttonprimary,
                    onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Loginscreen())),
                    child: const Text(
                      'Login Now',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: buttonprimary,
                    onPressed: () => home(),
                    child: const Text(
                      'Sign UP',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    )),
              ],
            ),
          )
        ],

        // children: [
        //   Container(
        //     width: 300,
        //     height: 350,
        //     child: Image.asset('assets/images/feed_me.png'),
        //   ),
        // ],
        // ElevatedButton(
        //   onPressed: login,
        //   child: const Text('Login Now'),
        // ),
      )),
      backgroundColor: Colors.white,
    );
  }
}
