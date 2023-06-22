import 'package:flutter/material.dart';
import 'package:xgram/model/ename/ename.dart';

class activityscreen extends StatefulWidget {
  activityscreen({Key? key}) : super(key: key);

  @override
  State<activityscreen> createState() => _activityscreenState();
}

class _activityscreenState extends State<activityscreen>
    with SingleTickerProviderStateMixin {
  TabController? tabcontrol;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabcontrol = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            tabbar(),
            Expanded(
              child: TabBarView(
                controller: tabcontrol,
                children: [
                  tabbarview(),
                  tabbarview(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tabbarview() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Text(
              'New',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 2,
            (context, index) {
              return listsliver(index);
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Text(
              'Today',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 5,
            (context, index) {
              return listsliver(index);
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Text(
              'This week',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) {
              return listsliver(index);
            },
          ),
        ),
      ],
    );
  }

  Widget listsliver(var index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
              child: Image(
                image: AssetImage('images/s6.png'),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'moein',
                style: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              Text(
                'Liked your post',
                style: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 120,
          ),
          getbottom(index == 0
              ? status.image
              : index == 1
                  ? status.follow
                  : status.maseage)
        ],
      ),
    );
  }

  Widget getbottom(status statusn) {
    switch (statusn) {
      case status.follow:
        return follow();
      case status.image:
        return image();
      case status.maseage:
        return massege();
    }
  }

  Widget image() {
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
        child: Image(
          image: AssetImage('images/item9.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget follow() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Follow',
        style: TextStyle(
          fontFamily: 'GB',
          fontSize: 12,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(80, 36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget massege() {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        'Message',
        style: TextStyle(
          fontFamily: 'GB',
          fontSize: 12,
          color: Colors.white,
        ),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(70, 36),
        side: BorderSide(color: Colors.grey, width: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget tabbar() {
    return Container(
      height: 70,
      color: Color(0xff1C1F2E),
      child: TabBar(
        controller: tabcontrol,
        labelStyle: TextStyle(fontSize: 16, fontFamily: 'GB'),
        indicatorColor: Color(0xffF35383),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 4,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
        tabs: [
          Tab(
            text: 'Following',
          ),
          Tab(
            text: 'You',
          ),
        ],
      ),
    );
  }
}
