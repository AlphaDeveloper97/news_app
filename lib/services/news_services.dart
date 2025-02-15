import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadLineNews({
    required String category,
  }) async {
    try {
      Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=4e183dc649654f9e950f3b13a889f57f&category=$category",
      );
      Map<String, dynamic> json = response.data;
      List<dynamic> articles = json["articles"];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        articlesList.add(ArticleModel.fromJson(article));
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
