import 'package:flutter_dependency_injection/src/users/data/datasources/users_remote_data_source.dart';
import 'package:flutter_dependency_injection/src/users/data/repos/users_repo_impl.dart';
import 'package:flutter_dependency_injection/src/users/domain/repos/users_repo.dart';
import 'package:flutter_dependency_injection/src/users/domain/usecases/get_users.dart';
import 'package:flutter_dependency_injection/src/users/presentation/bloc/users_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> initDependencies() async {
  final httpClient = http.Client();
  sl
    ..registerFactory(
      () => UsersBloc(getUsers: sl()),
    )
    ..registerLazySingleton(
      () => GetUsers(sl()),
    )
    ..registerLazySingleton<UsersRepo>(
      () => UsersRepoImpl(sl()),
    )
    ..registerLazySingleton<UsersRemoteDataSource>(
      () => UsersRemoteDataSourceImpl(
        httpClient: httpClient,
      ),
    );
}
