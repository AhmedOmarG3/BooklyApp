import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NoSearchYetWidget extends StatelessWidget {
  const NoSearchYetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 200),
        child: Text(
          'No Result Yet\n Search Now',
          style: Styles.titleSize20,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
