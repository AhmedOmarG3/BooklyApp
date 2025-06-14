import 'package:bookly/Features/home/presention/views/widgets/book_action.dart';
import 'package:bookly/Features/home/presention/views/widgets/list_view_item.dart';
import 'package:bookly/Features/home/presention/views/widgets/rating_row.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 300, child: ListViewItem()),
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
        const BookAction(),
      ],
    );
  }
}
