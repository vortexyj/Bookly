import 'package:bookly/Features/home/presentation/views/widgets/customappbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featuredlistview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedListView(),
      ],
    );
  }
}
