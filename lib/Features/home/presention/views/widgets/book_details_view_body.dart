import 'package:bookly/Features/home/presention/views/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presention/views/widgets/custom_book_details_app_b_ar.dart';
import 'package:bookly/Features/home/presention/views/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBAr(),
              SizedBox(
                height: 20,
              ),
              BookDetailsSection(),
              SizedBox(
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
