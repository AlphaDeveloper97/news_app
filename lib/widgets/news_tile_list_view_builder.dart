import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubits/news_cubit/get_news_cubit.dart';
import 'package:news/cubits/news_cubit/get_news_states.dart';
import 'package:news/widgets/custom_text_error.dart' show CustomTextError;
import 'package:news/widgets/news_tile_list_view.dart';

class NewsTileListViewBuilder extends StatefulWidget {
  const NewsTileListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsTileListViewBuilder> createState() =>
      _NewsTileListViewBuilderState();
}

class _NewsTileListViewBuilderState extends State<NewsTileListViewBuilder> {
  // dynamic future;
  @override
  void initState() {
    super.initState();
    _fetchNews();

    // future = NewsServices(Dio()).getTopHeadLineNews(category: widget.category);
  }

  void _fetchNews() {
    var getNewsCubit = BlocProvider.of<GetNewsCubit>(context);
    getNewsCubit.getNews(category: widget.category);
  }

  // List<ArticleModel> articles = [];
  @override
  void didUpdateWidget(covariant NewsTileListViewBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.category != widget.category) {
      _fetchNews();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, NewsStates>(
      builder: (context, state) {
        // var getNewsCubit = BlocProvider.of<GetNewsCubit>(context);
        // getNewsCubit.getNews(category: widget.category);
        if (state is NewsSuccessState) {
          return NewsTileListView(articles: state.articles);
        } else if (state is NewsFailureState) {
          return SliverToBoxAdapter(
            child: CustomTextError(text: state.errMessage),
          );
        }
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
    // return FutureBuilder<List<ArticleModel>>(
    //   future: future,
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData) {
    //       return NewsTileListView(
    //         articles: snapshot.data ?? [],
    //       );
    //     } else if (snapshot.hasError) {
    //       return Center(
    //         child: Padding(
    //           padding: const EdgeInsets.only(top: 200),
    //           child: SliverToBoxAdapter(
    //             child: CustomTextError(),
    //           ),
    //         ),
    //       );
    //     } else {
    //       return SliverToBoxAdapter(
    //         child: Padding(
    //           padding: const EdgeInsets.only(top: 200),
    //           child: Center(child: CircularProgressIndicator()),
    //         ),
    //       );
    //     }
    //   },
    // );
  }
}
