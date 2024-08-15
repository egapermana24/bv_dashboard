import 'package:flutter/material.dart';
import '../models/article.dart';
import '../app_colors.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  const ArticleItem({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
          leading: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(article.imageUrl),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.blueShadow.withOpacity(0.2),
                  offset: const Offset(0, 8),
                  blurRadius: 40,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.date,
                style: const TextStyle(
                    color: AppColors.listDateColor, fontFamily: 'Roboto'),
              ),
              const SizedBox(height: 2),
              Text(
                article.title,
                style: const TextStyle(
                  color: AppColors.listTextColor,
                  fontSize: 14,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
          subtitle: Row(
            children: [
              const SizedBox(
                height: 8,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFFEF4E8),
                  borderRadius: BorderRadius.circular(48),
                ),
                child: Text(
                  article.type,
                  style: const TextStyle(
                    color: Color(0xFFE69E4C),
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          height: 1,
          color: AppColors.listLineColor,
        ),
      ],
    );
  }
}
