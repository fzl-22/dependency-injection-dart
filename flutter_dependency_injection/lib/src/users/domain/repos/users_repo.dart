import 'package:flutter_dependency_injection/core/utils/typedef.dart';
import 'package:flutter_dependency_injection/src/users/domain/entities/user.dart';

abstract class UsersRepo {
  const UsersRepo();

  ResultFuture<List<User>> getUsers();
}
