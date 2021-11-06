import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:torath/custom_drawer/home_drawer.dart';
import 'package:torath/layouts/custom_animated_bottom_bar.dart';
import 'package:torath/layouts/home_dashboard.dart';
import 'package:torath/layouts/home_hadis.dart';
import 'package:torath/layouts/home_news.dart';
import 'package:torath/layouts/home_search.dart';

import 'package:torath/pages/articles.dart';
import 'package:marquee_widget/marquee_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController? animationController;
  int _currentIndex = 0;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  final _inactiveColor = Color(0xffe5e5e5);
  final _headr_color = Color(0xff333777);
  final _body_color = Color(0xff12122c);

  final _button_color = Color(0xff212040);
  final _box_color = Color(0xff212040);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _headr_color,
        title: Text(
          'تراث',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      drawer: HomeDrawer(),
      body: getBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: _headr_color,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(FontAwesomeIcons.home),
          title: Text('خانه'),
          activeColor: Color(0xff00ffff),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(FontAwesomeIcons.hospital),
          title: Text('موسسات'),
          activeColor: Color(0xff00ffff),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(FontAwesomeIcons.user),
          title: Text(
            'حساب ',
          ),
          activeColor: Color(0xff00ffff),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Container(
        color: _body_color,
        alignment: Alignment.center,
        padding: EdgeInsets.all(12.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            HomeSearch(),
            HomeHadis(),
            HomeNews(),
            HomeDashboard(),
          ],
        ),
      ),
      Container(
        color: _body_color,
        alignment: Alignment.center,
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(20, (index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff00ffca),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              height: 150,
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {

                },
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://parsgraphic.ir/uploads/designs/logo/dolat/2/64.jpg"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        "$indexموسسه ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 15),
        color: _body_color,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(8),
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.deepOrange,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://padidehshahr.com/wp-content/uploads/2019/01/9710324-preview.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Text(
                        'عضو شده در',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        '6 ماه پیش',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 35, right: 50),
                child: Text(
                  'محمدرضا',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
                padding: EdgeInsets.only(top: 2, right: 50),
                child: Text(
                  'برومند',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ))
          ],
        ),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
