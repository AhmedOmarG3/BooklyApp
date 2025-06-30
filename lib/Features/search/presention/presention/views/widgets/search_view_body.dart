
import 'package:bookly/Features/search/presention/presention/views/widgets/search_list_view.dart';
import 'package:bookly/Features/search/presention/presention/views/widgets/search_section.dart';
import 'package:flutter/material.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SearchSection(),
        ),
        SearchListView()
      ],
    );
  }
}
