import 'package:bookly/Features/home/presention/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: BestSellerItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}
