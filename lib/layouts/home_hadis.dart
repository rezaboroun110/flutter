import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee_widget/marquee_widget.dart';

class HomeHadis extends StatelessWidget{

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
        //header hadis
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "حدیث روز",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    print('بیشتر حدیث');
                  },
                  child: Text(
                    'بیشتر',
                    style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                )
              ],
            )),
        //Marquee hadis
        Container(
          decoration: BoxDecoration(
              color: Color(0xff212040),
              border: Border.all(
                color: Color(0xff212040),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: Colors.white,
                        size: 11,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Text('یک شنبه 1 مهر',
                            style: TextStyle(
                                fontSize: 11.0, color: Colors.white)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.book, color: Colors.white, size: 11),
                      Padding(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Text(
                          'امیرالمومنین(ع)',
                          style: TextStyle(
                              fontSize: 11.0, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Marquee(
                  child: Text(
                    'وَالذُّنُوبُ الَّتِی تُعَجِّلُ الفَناءَ قَطیعَةُ الرَّحِمِ وَ الْیمینُ الْفَاجِرَةُ وَ الاَقْوَالُ الکَاذِبَةُ وَ الزِّناءُ وَ سَدُّ طُرُقِ المُسْلِمِینَ وَ ادِّعاءُ الإمَامَةِ بِغَیرِ حَقٍّ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  autoRepeat: false,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

}