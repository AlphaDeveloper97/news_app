import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/custom_image.dart';
import 'package:news/widgets/custom_text_list_tile.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 27),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          CustomImage(image: articleModel.image),
          SizedBox(height: 12),
          CustomTextListTile(
            text: articleModel.title,
            fontSize: 27,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 8),
          CustomTextListTile(
            text: articleModel.subTitle ?? "",
            fontSize: 18,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
