import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SearchImage extends StatelessWidget {
  const SearchImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2 / 1,
        child: Image.asset(
          AssetsData.searchImage,
          height: hieght(context) * 0.2,
        ));
  }
}
