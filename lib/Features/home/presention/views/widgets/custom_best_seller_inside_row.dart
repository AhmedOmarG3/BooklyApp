import 'package:flutter/material.dart';

class CustomBestSellerInsideRow extends StatelessWidget {
  const CustomBestSellerInsideRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                size: 25,
                Icons.star,
                color: Colors.yellow,
              )),
          const Text(
            '4.8',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            '(334)',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          )
        ]);
  }
}
