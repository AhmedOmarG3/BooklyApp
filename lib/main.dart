import 'package:bookly/Features/home/data/repos/home_repo_impelement.dart';
import 'package:bookly/Features/home/presention/manager/best_seller_books_cubit/best_seller_cubit.dart';
import 'package:bookly/Features/home/presention/manager/featured_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/search/presention/data/repo/search_repo_imp.dart';
import 'package:bookly/Features/search/presention/presention/manager/cubit/search_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpelement>())..fetchFeaturedBooks(),
        ),BlocProvider(create: (context) => BestSellerCubit(getIt.get<HomeRepoImpelement>())..fetchBestSellerBooks(),),BlocProvider(create: (context) => SearchCubit(getIt.get<SearchRepoImp>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPraimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
