import 'package:flutter/material.dart';
import 'package:news_app/customwidgets/blog_tile.dart';
import 'package:news_app/customwidgets/category_tile.dart';
import 'package:news_app/providers/news_provider.dart';
import 'package:news_app/utils/constants.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late NewsProvider newsProvider;
  bool isCalledOnce = true;

  @override
  void didChangeDependencies() {
    if (isCalledOnce) {
      newsProvider = Provider.of<NewsProvider>(context, listen: true);
      newsProvider.getNewsData();
    }
    isCalledOnce = false;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final newsList = newsProvider.newsResponse?.articles;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Latest News',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SizedBox(
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
            ),
            newsProvider.hasDataLoaded
                ? Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: newsList!
                            .map((item) => BlogTile(
                                  imageUrl: item.urlToImage,
                                  title: item.title,
                                  description: item.description,
                                  articleUrl: item.url,
                                ))
                            .toList(),
                      ),
                    ),
                  )
                : SizedBox(
                    height: MediaQuery.of(context).size.height / 1.3,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
          ],
        ));
  }
}
