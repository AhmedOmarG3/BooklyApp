import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookPageCount extends StatelessWidget {
  const BookPageCount({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.rating,
  });
  final String? rating;
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
              Icons.auto_stories,
              color: Colors.yellow,
            )),
        Text(
          '(${rating ?? 0.toString()})',
          style: Styles.titleSize16.copyWith(
              color: Colors.white.withOpacity(0.5),
              fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
