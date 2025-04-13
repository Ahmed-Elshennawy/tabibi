import 'package:fpdart/fpdart.dart';
import 'package:tabibi/core/error/failures.dart';

abstract class Usecase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}