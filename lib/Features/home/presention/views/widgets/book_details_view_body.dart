import 'package:bookly/Features/home/presention/views/widgets/custom_book_details_app_b_ar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomBookDetailsAppBAr()
          
          ],
      ),
    );
  }
}
