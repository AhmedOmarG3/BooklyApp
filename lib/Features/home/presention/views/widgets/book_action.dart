import 'package:bookly/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          buttonColor: Colors.white,
          bottomLeftRadius: 12,
          topLeftRadius: 12,
          text: '199.99 €',
          textColor: Colors.black,
        ),
        CustomButton(
          buttonColor: Color(0xffF0825F),
          bottomRightRadius: 12,
          topRightRadius: 12,
          text: 'Free Preview',
          textColor: Colors.white,
        )
      ],
    );
  }
}
