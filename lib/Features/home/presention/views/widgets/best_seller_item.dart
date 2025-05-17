import 'package:bookly/Features/home/presention/views/widgets/custom_best_seller_container.dart';
import 'package:bookly/Features/home/presention/views/widgets/custom_best_seller_inside_row.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomBestSellerContainer(),
         SizedBox(
          width: 15,
        ),
         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Harry Potter \nand the Philosopher\'s ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text('J.K Rowling', style: TextStyle(fontSize: 12)),
          Text(
            '199\$',
            style: Styles.mediumTitle,
          )
        ]),
        CustomBestSellerInsideRow()
      ],
    );
  }
}
