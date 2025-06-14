import 'package:bookly/Features/search/presention/views/widgets/search_image.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        SearchImage(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextFormField(),
        )
      ],
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Search',
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffBA67C8))),
        suffixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
        ),
      ),
    );
  }
}
