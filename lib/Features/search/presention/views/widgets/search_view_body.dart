import 'package:bookly/Features/home/presention/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presention/views/widgets/featured_list_view.dart';
import 'package:bookly/Features/search/presention/views/widgets/search_image.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SearchSection(),
        ),
        BestSellerListView()
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

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextFormField(),
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
