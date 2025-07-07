import 'package:dartz/dartz.dart';
import 'package:decore_app/Feature/auth/domain/entities/user_entity.dart';
import 'package:decore_app/core/errors/faluire.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email,
      String password,
      String name,
      String mobileNumber,
      String birthDate);

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password);
      
  Future<Either<Failure, UserEntity>> signInWithGoogle();

  Future<Either<Failure, UserEntity>> signInWithFacebook();

  Future addUserData({required UserEntity userEntity});

  Future<UserEntity> getUserData({required String uid});

  Future saveUserData({required UserEntity user});
}
