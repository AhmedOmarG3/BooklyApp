import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_cubit_state.dart';

class BestSellerCubitCubit extends Cubit<BestSellerCubitState> {
  BestSellerCubitCubit() : super(BestSellerCubitInitial());
}
