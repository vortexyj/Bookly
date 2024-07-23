import 'package:bookly/Features/home/presentation/views/widgets/bookdetailedsection.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custombookdetailedappbar.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailedAppBar(),
          BookDetailsSection(),
        ],
      ),
    );
  }
}
