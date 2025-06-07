import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: width(context) * 0.09),
      child: Row(mainAxisAlignment: mainAxisAlignment, children: [
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
          style: Styles.titleSize16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(334)',
          style: Styles.titleSize16.copyWith(
              color: Colors.white.withOpacity(0.5),
              fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
