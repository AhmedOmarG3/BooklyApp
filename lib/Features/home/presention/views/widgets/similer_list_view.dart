import 'package:bookly/Features/home/presention/views/widgets/list_view_item.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class SimilerListView extends StatelessWidget {
  const SimilerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hieght(context) * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => const ListViewItem(),
      ),
    );
  }
}
