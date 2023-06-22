import 'package:flutter/material.dart';
import 'package:xgram/screens/Search_Screen.dart';
import 'package:xgram/screens/activity_screen.dart';
import 'package:xgram/screens/home_screen.dart';
import 'package:xgram/screens/newpost_screen.dart';
import 'package:xgram/screens/user_profile_screen.dart';

class mainscreen extends StatefulWidget {
  mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  var selctedindex = 0;
  List<Widget> pages() {
    return <Widget>[
      homeScreen(),
      searchscreen(),
      newpostscreen(),
      activityscreen(),
      userprofile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: IndexedStack(index: selctedindex, children: pages()),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff272B40),
              currentIndex: selctedindex,
              onTap: (value) {
                setState(() {
                  selctedindex = value;
                });
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage('images/icon_home.png'),
                  ),
                  activeIcon: Image(
                    image: AssetImage('images/icon_active_home.png'),
                  ),
                  label: 'item',
                ),
                BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage('images/icon_search_navigation.png'),
                  ),
                  activeIcon: Image(
                    image:
                        AssetImage('images/icon_search_navigation_active.png'),
                  ),
                  label: 'item',
                ),
                BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage('images/icon_add_navigation.png'),
                  ),
                  activeIcon: Image(
                    image: AssetImage('images/icon_add_navigation_active.png'),
                  ),
                  label: 'item',
                ),
                BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage('images/icon_activity_navigation.png'),
                  ),
                  activeIcon: Image(
                    image: AssetImage(
                        'images/icon_activity_navigation_active.png'),
                  ),
                  label: 'item',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      child: Image(
                        image: AssetImage('images/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  activeIcon: Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffF35383),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      child: Image(
                        image: AssetImage('images/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  label: 'item',
                )
              ],
            ),
          ),
        ));
  }
}
