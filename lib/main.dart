import 'package:flutter/material.dart';
import 'package:torath/pages/article.dart';
import 'package:torath/pages/articles.dart';
import 'package:torath/pages/home_page.dart';
import 'package:torath/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Vazir',
            primaryColor: Color(0xff12122c),
        ),
      initialRoute: "/splash_screen",
      routes: {
        "/splash_screen" : (context) => new SplashScreen(),
        "/" : (context) => new Directionality(textDirection: TextDirection.rtl, child: HomePage()),
        "/article" : (context) => new Directionality(textDirection: TextDirection.rtl, child: Articel()),
        "/articles" : (context) => new Directionality(textDirection: TextDirection.rtl, child: Articels(data:{}))
      },

    );
  }
}
class Data {
  final String title;
  final String data;

  const Data(this.title, this.data);
}