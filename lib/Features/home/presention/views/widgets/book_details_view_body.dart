import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presention/views/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presention/views/widgets/custom_book_details_app_b_ar.dart';
import 'package:bookly/Features/home/presention/views/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
            const  CustomBookDetailsAppBAr(),
            const  SizedBox(
                height: 20,
              ),
              BookDetailsSection(bookModel: bookModel,),
           const   SizedBox(
                height: 40,
              ),
              Expanded(
                child: SizedBox(
                  height: 10,
                ),
              ),
              SimilerBooksSection()
            ],
          ),
        ),
      ]),
    );
  }
}
