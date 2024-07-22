import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/bookrating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/homeviewbody.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              height: 100,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.TestLionelMessi),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Pottar and the dark GGoblen',
                    maxLines: 2,
                    style: Styles.TextStyle20,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  'J.K. Rowling',
                  style: Styles.Textstyle14,
                ),
                const SizedBox(
                  width: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99\$',
                      style: Styles.TextStyle20.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    BookRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
