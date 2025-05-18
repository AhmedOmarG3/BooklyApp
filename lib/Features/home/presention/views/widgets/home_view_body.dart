import 'package:bookly/Features/home/presention/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presention/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presention/views/widgets/featured_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(
              height: 30,
            ),
            FeaturedListView(),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Best Seller', style: Styles.titleSize20),
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        child: BestSellerListView(),
      ),
    ]);
  }
}
