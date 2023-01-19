import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/article_view_page.dart';

class BlogTile extends StatelessWidget {
  final String? imageUrl, title, description, articleUrl;

  const BlogTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.articleUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ArticleViewPage.routeName,
            arguments: articleUrl);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: imageUrl ??
                    "https://images.unsplash.com/photo-1628155930542-3c7a64e2c833?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
                errorWidget: (context, url, error) => Column(
                  children: const [
                    Icon(Icons.error, size: 50,),
                    Text("Invalid Image URL")
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title ?? "No title found",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              description ?? "No description found",
              style: const TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }

}
