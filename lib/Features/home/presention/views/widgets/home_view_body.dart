import 'package:bookly/Features/home/presention/views/widgets/best_seller_item.dart';
import 'package:bookly/Features/home/presention/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presention/views/widgets/featured_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 30,
          ),
          const FeaturedListView(),
          const SizedBox(
            height: 40,
          ),
          const Text('Best Seller', style: Styles.mediumTitle),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: BestSellerItem(),
            ),
            itemCount: 5,
          )),
        ],
      ),
    );
  }
}
