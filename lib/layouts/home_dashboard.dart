import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:torath/main.dart';
import 'package:torath/pages/articles.dart';

class HomeDashboard extends StatelessWidget {
  final _inactiveColor = Color(0xffe5e5e5);
  final _headr_color = Color(0xff333777);
  final _body_color = Color(0xff12122c);

  final _button_color = Color(0xff212040);
  final _box_color = Color(0xff212040);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //header dashboard
        Container(
          margin: EdgeInsets.only(top: 15, bottom: 12.0),
          padding: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.blue,
                width: 4.0,
              ),
            ),
          ),
          child: Text(
            "داشبورد",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        //body dashboard
        Container(
          margin: EdgeInsets.only(top: 12),
          height: 140,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 130,
                      decoration: BoxDecoration(
                          color: _box_color,
                          border: Border.all(
                            color: _box_color,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff00ffca),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              FontAwesomeIcons.graduationCap,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "مدیریت",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () => print("مدیریت"),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 130,
                      decoration: BoxDecoration(
                          color: _box_color,
                          border: Border.all(
                            color: _box_color,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff00ffca),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              FontAwesomeIcons.newspaper,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "اخبار",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () => print("اخبار"),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 130,
                      decoration: BoxDecoration(
                          color: _box_color,
                          border: Border.all(
                            color: _box_color,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff00ffca),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              FontAwesomeIcons.info,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "معرفی",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () => print("معرفی"),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 140,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 130,
                      decoration: BoxDecoration(
                          color: _box_color,
                          border: Border.all(
                            color: _box_color,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff00ffca),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              FontAwesomeIcons.photoVideo,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "مدیا",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () => print("مدیا"),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 130,
                      decoration: BoxDecoration(
                          color: _box_color,
                          border: Border.all(
                            color: _box_color,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff00ffca),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              FontAwesomeIcons.hospital,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "چارت اداری",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () => print("چارت اداری"),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 130,
                      decoration: BoxDecoration(
                          color: _box_color,
                          border: Border.all(
                            color: _box_color,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff00ffca),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              FontAwesomeIcons.moneyCheck,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "بودجه",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () => print("بودجه"),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 160,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 130,
                      decoration: BoxDecoration(
                          color: _box_color,
                          border: Border.all(
                            color: _box_color,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff00ffca),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              FontAwesomeIcons.mailBulk,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "ارتباط",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () => print("ارتباط"),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 130,
                      decoration: BoxDecoration(
                          color: _box_color,
                          border: Border.all(
                            color: _box_color,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff00ffca),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              FontAwesomeIcons.peopleCarry,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "کارمندان",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () => print("کارمندان"),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 130,
                      decoration: BoxDecoration(
                          color: _box_color,
                          border: Border.all(
                            color: _box_color,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff00ffca),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              FontAwesomeIcons.passport,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "امکانات",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Articels(data:{'title':'امکانات','items':{'id':1}}),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
