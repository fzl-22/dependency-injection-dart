import 'package:dartz/dartz.dart';
import 'package:flutter_dependency_injection/core/errors/failures.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef DataMap = Map<String, dynamic>;
