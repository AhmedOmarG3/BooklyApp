import 'package:bookly/Features/home/presention/views/widgets/list_view_item.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hieght(context) * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) =>const ListViewItem(),
      ),
    );
  }
}
