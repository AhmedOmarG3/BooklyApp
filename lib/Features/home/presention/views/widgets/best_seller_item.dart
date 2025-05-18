import 'package:bookly/Features/home/presention/views/widgets/custom_best_seller_container.dart';
import 'package:bookly/Features/home/presention/views/widgets/rating_row.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomBestSellerContainer(),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: width(context) * 0.45,
              child: const Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  'Harry Potter and the Philosopher\'s Stone',
                  style: Styles.titleSize18),
            ),

            SizedBox(
              height: 3,
            ),
            Text('J.K Rowling',
                style: Styles.titleSize18
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '199 €',
                  style: Styles.titleSize20,
                ),
                RatingRow(),
              ],
            )
          ]),
        ),
       

      ],
    ); 
  }
}
