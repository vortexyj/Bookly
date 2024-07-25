import 'package:bookly/Features/home/presentation/views/widgets/customlistview.dart';
import 'package:flutter/material.dart';

class SimularBooksListView extends StatelessWidget {
  const SimularBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomListViewItems(),
          );
        },
      ),
    );
  }
}
