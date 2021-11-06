import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeNews extends StatelessWidget{

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
        //header last news
        Container(
            margin: EdgeInsets.only(top: 15),
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
                  "آخرین اخبار",
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
        //slider last news
        Container(
          margin: EdgeInsets.only(top: 12),
          height: 160,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    new Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 150,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: new DecorationImage(
                          image: NetworkImage(
                              "http://via.placeholder.com/350x150"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    new Positioned(
                      bottom: 40,
                      right: 20,
                      child: SizedBox(
                        width: 250,
                        child: AutoSizeText(
                          'سخنان رضایی درباره ریزش بورس  بورس.',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    new Positioned(
                      bottom: 20,
                      right: 20,
                      child: Row(
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
                                        fontSize: 11.0,
                                        color: Colors.white)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.book,
                                  color: Colors.white, size: 11),
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
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }

}