import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: hieght(context) * .25,
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image:const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMWpI_1xWnLdkJTZImTfDUCUbwyaU5Ayb_edh8Tx0GHonBdQ3V8_lxg-9Ym94ziX2yH0w&usqp=CAU'))),
          ),
        ),
      ),
    );
  }
}
