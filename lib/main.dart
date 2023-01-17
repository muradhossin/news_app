import 'package:flutter/material.dart';
import 'package:news_app/pages/article_view_page.dart';
import 'package:news_app/pages/category_news_page.dart';
import 'package:news_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ArticleViewPage.routeName: (context) => ArticleViewPage(),
        CategoryNewsPage.routeName: (context) => CategoryNewsPage(),

      },
    );
  }
}


