import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: width(context) * 0.09),
      child: Row(children: [
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
      ]),
    );
  }
}
