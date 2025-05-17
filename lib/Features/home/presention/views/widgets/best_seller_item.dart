import 'package:bookly/Features/home/presention/views/widgets/custom_best_seller_container.dart';
import 'package:bookly/Features/home/presention/views/widgets/custom_best_seller_inside_row.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBestSellerContainer(),
        SizedBox(
          width: 15,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Harry Potter \nand the Philosopher\'s ',
              style: Styles.titleSize18),
          Text('J.K Rowling',
              style: Styles.titleSize18
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
          const Text(
            '199 €',
            style: Styles.titleSize20,
          )
        ]),
        const CustomBestSellerInsideRow()
      ],
    );
  }
}
