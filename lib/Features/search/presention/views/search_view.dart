import 'package:bookly/Features/search/presention/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
static const String routeName='/SearchView';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:Scaffold(

      body: SearchViewBody(),
    ));
  }
}