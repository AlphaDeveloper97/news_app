import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubits/news_cubit/get_news_cubit.dart';
import 'package:news/widgets/categories_list_view.dart';
import 'package:news/widgets/custom_app_bar.dart';
import 'package:news/widgets/news_tile_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNewsCubit(),
      child: Scaffold(
        appBar: AppBar(elevation: 0, centerTitle: true, title: CustomAppBar()),
        body:
        //  BlocBuilder<GetNewsCubit, NewsStates>(
        //   builder: (context, state) {
        //     if (state is NewsInitialState) {
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(child: SizedBox(height: 30)),
              NewsTileListViewBuilder(category: "general"),
            ],
          ),
        ),
        // }
        // return CustomTextError(
        //   text: "There is error ,please try later",
      ),
    );
    //     },
    //   ),
    // );
  }
}
