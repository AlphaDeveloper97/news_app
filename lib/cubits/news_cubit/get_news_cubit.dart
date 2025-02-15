import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubits/news_cubit/get_news_states.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';

class GetNewsCubit extends Cubit<NewsStates> {
  GetNewsCubit() : super(NewsInitialState());
  List<ArticleModel>? articles;
  getNews({required String category}) async {
    // emit(NewsLoadingState());
    try {
      articles = await NewsServices(
        Dio(),
      ).getTopHeadLineNews(category: category);
      emit(NewsSuccessState(articles!));
    } catch (e) {
      emit(NewsFailureState(e.toString()));
    }
  }
}
