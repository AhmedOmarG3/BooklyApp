
import 'package:bookly/Features/home/presention/views/widgets/best_seller_item.dart';

import 'package:bookly/Features/search/presention/presention/manager/cubit/search_cubit.dart';
import 'package:bookly/Features/search/presention/presention/views/widgets/no_search_yet_widget.dart';
import 'package:bookly/constants.dart';

import 'package:bookly/core/utils/widgets/custom_error_messege.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccessState) {
          return SliverList.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
              child: BestSellerItem(
                bookModel: state.books[index],
              ),
            ),
            itemCount: 9,
          );
        } else if (state is SearchFailureState) {
          return SliverToBoxAdapter(
              child: CustomErrorMessege(
            errMessage: state.errMessage,
          ));
        } else {
          return SliverToBoxAdapter(
              child: SizedBox(
                  height: hieght(context) * 0.7,
                  child: NoSearchYetWidget()));
        }
      },
    );
  }
}
