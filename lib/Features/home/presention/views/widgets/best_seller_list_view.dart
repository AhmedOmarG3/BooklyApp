import 'package:bookly/Features/home/presention/manager/best_seller_books_cubit/best_seller_cubit.dart';
import 'package:bookly/Features/home/presention/views/widgets/best_seller_item.dart';
import 'package:bookly/Features/home/presention/views/widgets/best_seller_item_shimmer.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/widgets/custom_error_messege.dart';
import 'package:bookly/core/utils/widgets/custom_progress_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerCubitState>(
      builder: (context, state) {
        if (state is BestSellerSuccessState) {
      return SliverList.builder(
    itemBuilder: (context, index) =>  Padding(
      padding:const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      child: BestSellerItem(bookModel: state.books[index],),
    ),
    itemCount: 9,
      );
    }else if(state is BestSellerFailureState){
      return SliverToBoxAdapter(child: CustomErrorMessege(errMessage: state.errMessage,));
    }else{
      return  SliverToBoxAdapter(child:  SizedBox(height: hieght(context)*0.7,
        child: const BestSellerItemShimmer()));
    }
      },
    );
  }
}
