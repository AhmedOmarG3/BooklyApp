import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presention/views/book_details_view.dart';
import 'package:bookly/Features/home/presention/views/widgets/custom_best_seller_container.dart';
import 'package:bookly/Features/home/presention/views/widgets/rating_row.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});
final BookModel bookModel;
  @override

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(BookDetailsView.routeName,extra: bookModel);
      },
      child: Row(
        children: [
           CustomBestSellerContainer(imageUrl:bookModel.volumeInfo!.imageLinks!.thumbnail! ,),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: width(context) * 0.45,
                child:  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    bookModel.volumeInfo!.title!??'Harry Potter and the Philosopher\'s Stone',
                    style: Styles.titleSize18),
              ),
              SizedBox(
                height: 3,
              ),
              Text(bookModel.volumeInfo!.authors?.elementAt(0)??'J.K Rowling',
                  style: Styles.titleSize18
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
               Row(
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
      ),
    );
  }
}
