import 'package:flutter/material.dart';

class newpostscreen extends StatefulWidget {
  newpostscreen({Key? key}) : super(key: key);

  @override
  State<newpostscreen> createState() => _newpostscreenState();
}

class _newpostscreenState extends State<newpostscreen> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        appBar: AppBar(
          backgroundColor: Color(0xff1C1F2E),
          title: Row(children: [
            Text(
              'Post',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Image(image: AssetImage('images/icon_arrow_down.png')),
          ]),
          actions: [
            Center(
              child: Text(
                'Next',
                style: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Image(image: AssetImage('images/icon_arrow_right_box.png')),
          ],
          elevation: 0,
        ),
        body: SafeArea(child: newpost()));
  }

  Widget newpost() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 83),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 375,
                  width: 394,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: DecorationImage(
                          image: AssetImage('images/item$i.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(childCount: 10,
                        (context, index) {
                      return InkWell(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        onTap: () {
                          setState(() {
                            i = index;
                          });
                        },
                        child: Container(
                          height: 128,
                          width: 128,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('images/item$index.png'),
                                  fit: BoxFit.cover)),
                        ),
                      );
                    }),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8)),
              ),
            ],
          ),
        ),
        Container(
          height: 83,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff272B40),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              'Draft',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 20,
                color: Color(0xffF35383),
              ),
            ),
            Text(
              'Gallery',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              'Take',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ]),
        )
      ],
    );
  }
}
