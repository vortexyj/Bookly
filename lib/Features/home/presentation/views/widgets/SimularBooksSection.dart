import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/simularbookslistview.dart';
import 'package:flutter/material.dart';

class SimularBooksSection extends StatelessWidget {
  const SimularBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You may also like',
          style: Styles.Textstyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 30,
        ),
        const SimularBooksListView(),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
