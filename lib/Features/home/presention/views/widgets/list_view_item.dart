import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem( {super.key,  this.bookModel});
final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image:  DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      bookModel!.volumeInfo!.imageLinks?.thumbnail ??
                          'https://via.placeholder.com/150'))),
          ),
        ),
      ),
    );
  }
}
