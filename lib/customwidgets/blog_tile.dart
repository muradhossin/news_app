import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final String? imageUrl, title, description;

  const BlogTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
            imageUrl ??
                "https://images.unsplash.com/photo-1628155930542-3c7a64e2c833?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
          ),
          Text(
            title ?? "No title found",
            style: TextStyle(fontSize: 17, color: Colors.black87),
          ),
          Text(
            description ?? "No description found",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
