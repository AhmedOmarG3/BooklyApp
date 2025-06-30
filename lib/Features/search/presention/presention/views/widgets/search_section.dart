
import 'package:bookly/Features/search/presention/presention/manager/cubit/search_cubit.dart';
import 'package:bookly/Features/search/presention/presention/views/widgets/custom_text_form_field.dart';
import 'package:bookly/Features/search/presention/presention/views/widgets/search_image.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close)),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const SearchImage(),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextFormField(
            onSubmitted: (value) {
              
              context.read<SearchCubit>().fetchSearchedBooks(search: value);
            },
          ),
        ),
        const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'Results',
              style: Styles.titleSize20,
            ),
          )
        ])
      ],
    );
  }
}
