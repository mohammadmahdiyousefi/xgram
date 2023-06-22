import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class searchscreen extends StatefulWidget {
  searchscreen({Key? key}) : super(key: key);

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: searchbox(),
            ),
            SliverToBoxAdapter(
              child: getlistproperty(),
            ),
            SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                sliver: getposts())
          ],
        ),
      ),
    );
  }

  Widget getposts() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return Container(
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
                image: AssetImage('images/post$index.png'),
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
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            QuiltedGridTile(2, 1),
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
          ]),
    );
  }

  Widget getlistproperty() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        height: 68,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, indexh) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 28,
                width: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Color(0xff272B40)),
                child: Center(
                  child: Text(
                    'Account',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GM', fontSize: 12),
                  ),
                ),
              );
            }));
  }

  Widget searchbox() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 46,
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
          color: Color(0xff272B40),
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
              image: AssetImage('images/icon_search.png'),
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
            ),
            Image(
              image: AssetImage('images/icon_scan.png'),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}
