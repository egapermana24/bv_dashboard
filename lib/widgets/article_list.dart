import 'package:flutter/material.dart';
import 'article_item.dart';
import '../models/article.dart';

class ArticleList extends StatelessWidget {
  final List<Article> articles;

  const ArticleList({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ArticleItem(article: articles[index]);
        },
      ),
    );
  }
}
