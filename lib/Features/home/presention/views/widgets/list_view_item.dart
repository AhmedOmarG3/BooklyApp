import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: CachedNetworkImage(
                  placeholder: (context, url) => Shimmer.fromColors(
  baseColor: Colors.grey.shade300,
  highlightColor: Colors.grey.shade100,
  child: Container(
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(16), 
    ),
  ),
),
                  fit: BoxFit.fill,
                  imageUrl: imageUrl ,errorWidget: (context, url, error) => const Icon(Icons.error),
                      )),
        ),
      ),
    );
  }
}
