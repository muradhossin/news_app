import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/providers/news_provider.dart';
import 'package:news_app/utils/constants.dart';
import 'package:provider/provider.dart';

class CategoryTile extends StatefulWidget {
  final imageUrl, categoryName;

  const CategoryTile({Key? key, this.imageUrl, this.categoryName})
      : super(key: key);

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {

  @override
  Widget build(BuildContext context) {

    return Consumer<NewsProvider>(
      builder: (context, provider, _) =>
      GestureDetector(
        onTap: () {
          provider.setCategory(widget.categoryName);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  imageUrl: widget.imageUrl,
                  width: 120,
                  height: 60,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black38,
                ),
                child: Text(
                  widget.categoryName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
