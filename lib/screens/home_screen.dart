import 'dart:ui';

import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<String> name = [
    'Mojavad_dev',
    'mehdi',
    'shayan',
    'alireza',
    'reza',
    'ali',
    'moein',
    'narges',
    'negar',
    'farid'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      appBar: AppBar(
        backgroundColor: Color(0xff1C1F2E),
        actions: [
          Image(
            image: AssetImage('images/icon_direct.png'),
          ),
        ],
        title: Container(
          width: 128,
          height: 28,
          child: Image(
            image: AssetImage('images/moodinger_logo.png'),
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return index == 0 ? addstory() : story(index);
                }),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return post(index);
            }, childCount: 5),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
        ],
      ),
    );
  }

  Widget post(var index) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 48,
            width: 48,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffF35383), width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
              child: Image(
                image: AssetImage('images/s3.png'),
              ),
            ),
          ),
          title: Text(
            'Mohammad mahdi',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            'محمد مهدی یوسفی  برنامه نویس موبایل ',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
          trailing: Image(image: AssetImage('images/icon_menu.png')),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            children: [
              Container(
                height: 375,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Image(
                  image: AssetImage('images/post$index.png'),
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Image(
                  image: AssetImage('images/icon_video.png'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 340,
          height: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.white.withOpacity(0.1)
              ],
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Image(image: AssetImage('images/icon_hart.png')),
              SizedBox(
                width: 8,
              ),
              Text(
                '2.6k',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'GB', fontSize: 14),
              ),
              SizedBox(
                width: 42,
              ),
              Image(image: AssetImage('images/icon_comments.png')),
              SizedBox(
                width: 8,
              ),
              Text(
                '1.5k',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'GB', fontSize: 14),
              ),
              SizedBox(
                width: 30,
              ),
              TextButton(
                  onPressed: () {
                    share();
                  },
                  child: Image(image: AssetImage('images/icon_share.png'))),
              SizedBox(
                width: 30,
              ),
              Image(image: AssetImage('images/icon_save.png')),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }

  Future<Widget?> share() {
    return showModalBottomSheet(
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: ((context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: DraggableScrollableSheet(
            maxChildSize: 0.88,
            minChildSize: 0.2,
            initialChildSize: 0.5,
            builder: ((context, scrollController) {
              return ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    color: Colors.white.withOpacity(0.3),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomScrollView(
                          controller: scrollController,
                          slivers: [
                            SliverToBoxAdapter(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 5,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 27,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                          fontFamily: 'GB',
                                          fontSize: 24,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'images/icon_share_bottomsheet.png'),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Container(
                                    height: 46,
                                    width: 340,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.4),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(13),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image(
                                          image: AssetImage(
                                              'images/icon_search.png'),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              hintText: 'Search...',
                                              hintStyle: TextStyle(
                                                fontFamily: 'GB',
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                ],
                              ),
                            ),
                            SliverGrid(
                              delegate: SliverChildBuilderDelegate(
                                  childCount: 10, (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/s$index.png'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      name[index],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'GB',
                                          fontSize: 15,
                                          color: Colors.white),
                                    )
                                  ],
                                );
                              }),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 15,
                                      mainAxisExtent: 110),
                            ),
                            SliverPadding(
                              padding: EdgeInsets.only(bottom: 60),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 10,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Send',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      }),
    );
  }

  Widget story(var index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 68,
          width: 68,
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffF35383), width: 2),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            child: Image(
              image: AssetImage('images/s$index.png'),
            ),
          ),
        ),
        Text(
          name[index],
          style: TextStyle(
            fontFamily: 'GS',
            fontSize: 12,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget addstory() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 64,
          width: 64,
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            child: Image(
              image: AssetImage('images/icon_plus.png'),
            ),
          ),
        ),
        Text(
          'Your Story',
          style: TextStyle(
            fontFamily: 'GS',
            fontSize: 12,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
