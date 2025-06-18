import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presention/views/book_details_view.dart';
import 'package:bookly/Features/home/presention/views/home_view.dart';
import 'package:bookly/Features/search/presention/views/search_view.dart';

import 'package:bookly/Features/splash/presention/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: SplashView.routeName,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          path: BookDetailsView.routeName,
          builder: (context, state) {
            final book = state.extra as BookModel;
            return BookDetailsView(bookModel: book,);
          }),
      GoRoute(
        path: SearchView.routeName,
        builder: (context, state) => const SearchView(),
      ),
      // Add more routes here
    ],
  );
}
