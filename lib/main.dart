import 'package:flutter/material.dart';
import 'package:xgram/screens/Search_Screen.dart';
import 'package:xgram/screens/activity_screen.dart';
import 'package:xgram/screens/home_screen.dart';
import 'package:xgram/screens/login_screen.dart';
import 'package:xgram/screens/mai_screen.dart';
import 'package:xgram/screens/newpost_screen.dart';
import 'package:xgram/screens/swith_account_screen.dart';
import 'package:xgram/screens/user_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
            headline4: TextStyle(
                fontFamily: 'GB',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(128, 48),
            backgroundColor: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            textStyle: TextStyle(
                fontFamily: 'GB', fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: loginscreen(),
    );
  }
}

class logoscreen extends StatelessWidget {
  const logoscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pattern1.png'),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 120,
                  ),
                  child: Image(
                    image: AssetImage('images/logo_splash.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: 32,
                child: Column(
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
