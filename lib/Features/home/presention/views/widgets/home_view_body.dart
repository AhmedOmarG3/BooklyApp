import 'package:bookly/Features/home/presention/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presention/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        ListViewItem()
        // Expanded(
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: 3,
        //     itemBuilder: (context, index) => ListViewItem(),
        //   ),
        // ),
        // Spacer(
        //   flex: 2,
        // )
      ],
    );
  }
}
