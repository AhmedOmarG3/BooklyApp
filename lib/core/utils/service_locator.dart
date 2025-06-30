import 'package:bookly/Features/home/data/repos/home_repo_impelement.dart';
import 'package:bookly/Features/search/presention/data/repo/search_repo_imp.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpelement>(
    HomeRepoImpelement(
      getIt.get<ApiService>(),
    ),

    
  );

  
  getIt.registerSingleton<SearchRepoImp>(
    SearchRepoImp(
      getIt.get<ApiService>(),
    ),

    
  );


}
