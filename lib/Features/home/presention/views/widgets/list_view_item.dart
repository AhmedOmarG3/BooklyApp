import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem( {super.key, required this.imageUrl});
final String imageUrl;
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
                      imageUrl??'https://www.noor-book.com/publice/covers_cache_webp/2/8/b/9/0e368e83428b9cbd70f7a502d2c1b3e3.jpg.webp'))),
          ),
        ),
      ),
    );
  }
}
