import 'package:flutter/material.dart';
import 'package:xgram/screens/swith_account_screen.dart';

class loginscreen extends StatefulWidget {
  loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  FocusNode negahban = FocusNode();
  FocusNode negahban1 = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    negahban.addListener(() {
      setState(() {});
    });
    negahban1.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 79, 60, 251),
                  Color.fromARGB(255, 238, 161, 242),
                ]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 76,
              ),
              Image(image: AssetImage('images/rocket.png'))
            ],
          ),
        ),
        Container(
          height: 380,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff1C1F2E),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to ',
                      style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Image(image: AssetImage('images/mood.png'))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: TextField(
                    focusNode: negahban,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 20,
                        color: negahban.hasFocus
                            ? Color(0xffF35383)
                            : Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xffC5C5C5), width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xffF35383), width: 3),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: TextField(
                    focusNode: negahban1,
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 20,
                        color: negahban1.hasFocus
                            ? Color(0xffF35383)
                            : Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xffC5C5C5), width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xffF35383), width: 3),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) {
                          return swithAccountScreen();
                        }),
                      ),
                    );
                  },
                  child: Text(
                    'Sign in',
                  ),
                ),
                Row(
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
              ]),
        )
      ]),
    );
  }
}
