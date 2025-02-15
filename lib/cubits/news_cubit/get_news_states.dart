import 'package:news/models/article_model.dart';

class NewsStates {}

class NewsInitialState extends NewsStates {}

// class NewsLoadingState extends NewsStates {}

class NewsSuccessState extends NewsStates {
  final List<ArticleModel> articles;

  NewsSuccessState(this.articles);
}

class NewsFailureState extends NewsStates {
  final String errMessage;

  NewsFailureState(this.errMessage);
}
