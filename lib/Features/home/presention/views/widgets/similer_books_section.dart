import 'package:bookly/Features/home/presention/views/widgets/similer_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('you can also like', style: Styles.titleSize16),
              SizedBox(
                height: 10,
              ),
              SimilerListView(id:id ,),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ],
    );
  }
}
