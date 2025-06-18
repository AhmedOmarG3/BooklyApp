import 'package:bookly/Features/home/presention/manager/featured_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presention/views/book_details_view.dart';
import 'package:bookly/Features/home/presention/views/widgets/featured_list_shimmer.dart';
import 'package:bookly/Features/home/presention/views/widgets/list_view_item.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/widgets/custom_error_messege.dart';
import 'package:bookly/core/utils/widgets/custom_progress_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksCubitState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
  return SizedBox(
    height: hieght(context) * .25,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: state.books.length,
      itemBuilder: (context, index) =>  InkWell(onTap: (){GoRouter.of(context).push(BookDetailsView.routeName,extra: state.books[index]);},
        child: ListViewItem(imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,)),
    ),
  );
}else if(state is FeaturedBooksFailureState){
  return CustomErrorMessege(errMessage: state.errMessage);
}else{
  return const FeaturedListShimmer();
}
      },
    );
  }
}
