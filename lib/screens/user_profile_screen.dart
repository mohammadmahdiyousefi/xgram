import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class userprofile extends StatefulWidget {
  userprofile({Key? key}) : super(key: key);

  @override
  State<userprofile> createState() => _userprofileState();
}

class _userprofileState extends State<userprofile>
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
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                bottom: PreferredSize(
                  child: Container(
                    height: 14,
                    decoration: BoxDecoration(
                      color: Color(0xff1C1F2E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        topRight: Radius.circular(17),
                      ),
                    ),
                  ),
                  preferredSize: Size.fromHeight(10),
                ),
                backgroundColor: Color(0xff1C1F2E),
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image(
                    image: AssetImage('images/item.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  )
                ],
              ),
              SliverToBoxAdapter(
                child: getprofile(),
              ),
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: tapbarr(tabcontrol),
              )
            ];
          },
          body: TabBarView(controller: tabcontrol, children: [
            getviwe(),
            getviwe(),
          ]),
        ));
  }

  Widget getviwe() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Image(
                    image: AssetImage('images/item$index.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              repeatPattern: QuiltedGridRepeatPattern.same,
              pattern: [
                QuiltedGridTile(1, 1),
                QuiltedGridTile(2, 2),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
              ]),
        ),
      ],
    );
  }

  Widget getprofile() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffF35383),
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(17),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              child: Image(
                image: AssetImage('images/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'محمد مهدی یوسفی برنامه نویس موبایل ',
                style: TextStyle(
                  fontFamily: 'SM',
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              Text(
                'm.mahdi_y.e',
                style: TextStyle(
                  fontFamily: 'SM',
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 60,
          ),
          Image(image: AssetImage('images/icon_profile_edit.png'))
        ],
      ),
    );
  }
}

class tapbarr extends SliverPersistentHeaderDelegate {
  tapbarr(this.tabcontrol);
  TabController? tabcontrol;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
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
              child: Image(
                image: AssetImage('images/icon_tab_posts.png'),
              ),
            ),
            Tab(
              child: Image(
                image: AssetImage('images/icon_tab_bookmark.png'),
              ),
            ),
          ]),
    );
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
