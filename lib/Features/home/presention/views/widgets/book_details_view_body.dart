import 'package:bookly/Features/home/presention/views/widgets/custom_book_details_app_b_ar.dart';
import 'package:bookly/Features/home/presention/views/widgets/book_book.dart';
import 'package:bookly/Features/home/presention/views/widgets/list_view_item.dart';
import 'package:bookly/Features/home/presention/views/widgets/rating_row.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomBookDetailsAppBAr(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(width: width(context) * 0.46, child: ListViewItem()),
          const SizedBox(
            height: 20,
          ),
          Text('the Jungle Book',
              style: Styles.titleSize20
                  .copyWith(fontSize: 30, fontWeight: FontWeight.w600)),
          Text('Rudyard Kipling',
              style: Styles.titleSize20.copyWith(
                  color: const Color.fromARGB(255, 199, 196, 196),
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic)),
          const RatingRow(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const BookAction()
        ],
      ),
    );
  }
}
