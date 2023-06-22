import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xgram/screens/mai_screen.dart';

class swithAccountScreen extends StatelessWidget {
  const swithAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage('images/switch_account_background.png'),
              ),
            ],
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(
                  height: 340,
                  width: 340,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.white.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 129,
                        width: 129,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          child: Image(
                            image: AssetImage('images/profile.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'Mohammad Mahdi Yousefi',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: ((context) {
                            return mainscreen();
                          })));
                        },
                        child: Text('Confirm'),
                      ),
                      Text('Swith Account',
                          style: Theme.of(context).textTheme.headline4),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'don\'t have an account? / ',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontFamily: 'GB'),
                ),
                Text(
                  'Sign up ',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontFamily: 'GB'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
