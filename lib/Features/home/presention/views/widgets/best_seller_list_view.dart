import 'package:bookly/Features/home/presention/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
        child: BestSellerItem(),
      ),
      itemCount: 9,
    );
  }
}
