import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/bestsellerlistview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/bestsellerlistviewitem.dart';
import 'package:bookly/Features/home/presentation/views/widgets/customappbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featuredlistview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedListView(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Best Seller',
                  style: Styles.TextStyle18,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
