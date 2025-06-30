import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const CustomButton( 
          buttonColor: Colors.white,
          bottomLeftRadius: 12,
          topLeftRadius: 12,
          text: 'Free',
          textColor: Colors.black,
        ),
        CustomButton(onPressed:()async{
          Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);
           if ( await canLaunchUrl(url)) {
            await launchUrl(url);
            
   
  }
        } ,
          buttonColor: const Color(0xffF0825F),
          bottomRightRadius: 12,
          topRightRadius: 12,
          text: 'Preview',
          textColor: Colors.white,
        )
      ],
    );
  }
}
