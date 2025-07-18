import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:decore_app/Feature/auth/data/models/user_model.dart';
import 'package:decore_app/Feature/auth/domain/repos/auth_repo.dart';
import 'package:decore_app/core/errors/exception.dart';
import 'package:decore_app/core/services/database_services.dart';
import 'package:decore_app/core/services/firebase_auth_service.dart';
import 'package:decore_app/core/services/shared_preference_singleton.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/core/utils/endpoint.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/errors/faluire.dart';
import '../../domain/entities/user_entity.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseServices databaseServices;

  AuthRepoImpl(
      {required this.databaseServices, required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email,
      String password,
      String name,
      String mobileNumber,
      String birthDate) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);

      var userEntity = UserEntity(
          uid: user.uid,
          email: email,
          name: name,
          mobileNumber: mobileNumber,
          birthDate: birthDate);
      await addUserData(userEntity: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      log("Eception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}");
      if (user != null) await firebaseAuthService.deleteUser();
      return left(
        ServerFailure(
          'هناك خطأ ما يرجى المحاولة في وقت لاحق',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uid: user.uid);
      await saveUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log("Eception in AuthRepoImpl.loginWithEmailAndPassword: ${e.toString()}");
      return left(
        ServerFailure(
          'هناك خطأ ما يرجى المحاولة في وقت لاحق',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      await saveUserData(user: userEntity);
      await addUserData(userEntity: userEntity);

      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log("Eception in AuthRepoImpl.loginWithEmailAndPassword: ${e.toString()}");
      return left(
        ServerFailure(
          'هناك خطأ ما يرجى المحاولة في وقت لاحق',
        ),
      );
    }
  }

  @override
  Future addUserData({required UserEntity userEntity}) async {
    await databaseServices.addData(
        path: EndPoint.addUserData,
        data: UserModel.fromEntity(userEntity).toMap(),
        docId: userEntity.uid);
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) await firebaseAuthService.deleteUser();
  }

  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var userData =
        await databaseServices.getData(path: EndPoint.getUserData, docId: uid);
    return UserModel.fromJson(userData);
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    var jsonData = jsonEncode(UserModel.fromEntity(user).toMap());
    await Prefs.setString(kUserData, jsonData);
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      await saveUserData(user: userEntity);
      var isUserExist = await databaseServices.checkIfDataExist(
          path: EndPoint.isUserExist, docId: user.uid);
      if (isUserExist) {
        await getUserData(uid: user.uid);
      } else {
        await addUserData(userEntity: userEntity);
      }

      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log("Eception in AuthRepoImpl.signInWithGoogle: ${e.toString()}");
      return left(
        ServerFailure(
          'هناك خطأ ما يرجى المحاولة في وقت لاحق',
        ),
      );
    }
  }
}
