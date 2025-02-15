import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/news_tile.dart' show NewsTile;

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsTile(articleModel: articles[index]);
      }),
    );
  }
}
