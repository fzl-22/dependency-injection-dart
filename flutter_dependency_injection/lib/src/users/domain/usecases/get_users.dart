import 'package:flutter_dependency_injection/core/usecase/usecase.dart';
import 'package:flutter_dependency_injection/core/utils/typedef.dart';
import 'package:flutter_dependency_injection/src/users/domain/entities/user.dart';
import 'package:flutter_dependency_injection/src/users/domain/repos/users_repo.dart';

class GetUsers extends UseCaseWithoutParams<List<User>> {
  const GetUsers(this._repo);

  final UsersRepo _repo;

  @override
  ResultFuture<List<User>> call() {
    return _repo.getUsers();
  }
}
