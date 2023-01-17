import 'package:flutter/material.dart';
import 'package:news_app/customwidgets/category_tile.dart';
import 'package:news_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  final category = categoryList[index];
                  return CategoryTile(
                    categoryName: category.categoryName,
                    imageUrl: category.imageUrl,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
