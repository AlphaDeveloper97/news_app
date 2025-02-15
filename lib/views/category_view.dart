import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubits/news_cubit/get_news_cubit.dart';
import 'package:news/widgets/news_tile_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryOne});
  final String categoryOne;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNewsCubit(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [NewsTileListViewBuilder(category: categoryOne)],
        ),
      ),
    );
  }
}
