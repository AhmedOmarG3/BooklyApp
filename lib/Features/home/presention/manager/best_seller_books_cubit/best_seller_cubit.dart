import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_cubit_state.dart';

class BestSellerCubit extends Cubit<BestSellerCubitState> {
  BestSellerCubit(this.homeRepo) : super(BestSellerCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerLoadingState());
    var result = await homeRepo.fetchBNewsetBooks();
    result.fold((failure) {
      emit(BestSellerFailureState(failure.message));
    }, (books) {
      emit(BestSellerSuccessState(books));
    });
  }
}
