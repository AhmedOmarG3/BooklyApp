part of 'best_seller_cubit.dart';

sealed class BestSellerCubitState extends Equatable {
  const BestSellerCubitState();

  @override
  List<Object> get props => [];
}

final class BestSellerCubitInitial extends BestSellerCubitState {}
final class BestSellerLoadingState extends BestSellerCubitState {}
final class BestSellerSuccessState extends BestSellerCubitState {
  final List<BookModel> books;
  const BestSellerSuccessState(this.books);
}
final class BestSellerFailureState extends BestSellerCubitState {
  final String errMessage;
  const BestSellerFailureState(this.errMessage);
}