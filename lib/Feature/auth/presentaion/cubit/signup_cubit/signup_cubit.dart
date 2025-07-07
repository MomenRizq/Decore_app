

import 'package:decore_app/Feature/auth/domain/repos/auth_repo.dart';
import 'package:decore_app/Feature/auth/presentaion/cubit/signup_cubit/signup_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      String email, String password, String name , String phone , String birthDate) async {
    emit(SignupLoading());
    final result =
        await authRepo.createUserWithEmailAndPassword(email, password, name, phone ,birthDate);
    result.fold(
        (failure) => emit(
              SignupFairlure(message: failure.message),
            ),
        (userEntity) => emit(
              SignupSuccess(userEntity: userEntity),
            )); //if success emit this state and pass the user to UI
  }

   Future<void> signupWithGoogle() async {
    emit(SignupLoading());
    final result = await authRepo.signInWithGoogle();
    result.fold(
        (failure) => emit(
              SignupFairlure(message: failure.message),
            ),
        (userEntity) => emit(
              SignupSuccess(userEntity: userEntity),
            )); //if success emit this state and pass the user to UI
  }

   Future<void> signUpWithFacebook() async {
    emit(SignupLoading());
    final result = await authRepo.signInWithFacebook();
    result.fold(
        (failure) => emit(
              SignupFairlure(message: failure.message),
            ),
        (userEntity) => emit(
              SignupSuccess(userEntity: userEntity),
            )); //if success emit this state and pass the user to UI
  } 


}
