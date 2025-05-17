import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBestSellerInsideRow extends StatelessWidget {
  const CustomBestSellerInsideRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                size: 25,
                Icons.star,
                color: Colors.yellow,
              )),
          const Text(
            '4.8',
            style: Styles.titleSize15,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            '(334)',
            style: Styles.titleSize15.copyWith(fontWeight: FontWeight.w400),
          )
        ]);
  }
}
