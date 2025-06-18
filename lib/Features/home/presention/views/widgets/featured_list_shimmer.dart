import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FeaturedListShimmer extends StatelessWidget {
  const FeaturedListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hieght(context) * .25,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemBuilder: (context, index) => Shimmer.fromColors(
                baseColor: const Color.fromARGB(255, 138, 132, 132),
                highlightColor: Colors.grey.shade100,
                child: AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
          itemCount: 5),
    );
  }
}
