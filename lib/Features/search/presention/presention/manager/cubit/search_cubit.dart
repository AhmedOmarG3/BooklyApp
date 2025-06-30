import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/presention/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;
  Future<void> fetchSearchedBooks({required String search}) async {
    emit(SearchLoadingState());
    var result = await searchRepo.fetchSearchedBooks(search: search);
    result.fold((failure) {
      emit(SearchFailureState(failure.message));
    }, (books) {
      emit(SearchSuccessState(books));
    });
  }
}
