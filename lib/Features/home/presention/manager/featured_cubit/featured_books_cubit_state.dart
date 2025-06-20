part of 'featured_books_cubit.dart';

sealed class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitialState extends FeaturedBooksCubitState {}
final class FeaturedBooksLoadingState extends FeaturedBooksCubitState {}
final class FeaturedBooksSuccessState extends FeaturedBooksCubitState {
  final List<BookModel> books;
  const FeaturedBooksSuccessState(this.books);
}
final class FeaturedBooksFailureState extends FeaturedBooksCubitState {
  final String errMessage;
  const FeaturedBooksFailureState(this.errMessage);
}