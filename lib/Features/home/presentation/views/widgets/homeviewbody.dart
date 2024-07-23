import 'package:bookly/Core/utils/approutes.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/bestsellerlistview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/customappbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featuredlistview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBooksDetailesView);
      },
      child: const CustomScrollView(
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
      ),
    );
  }
}
