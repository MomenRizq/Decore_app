import 'package:bloc/bloc.dart';
import 'package:decore_app/Feature/auth/domain/entities/user_entity.dart';
import 'package:decore_app/Feature/auth/domain/repos/auth_repo.dart';
part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(SigninLoading());
    final result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
        (failure) => emit(
              SigninFairlure(message: failure.message),
            ),
        (userEntity) => emit(
              SigninSuccess(userEntity: userEntity),
            )); //if success emit this state and pass the user to UI
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());
    final result = await authRepo.signInWithGoogle();
    result.fold(
        (failure) => emit(
              SigninFairlure(message: failure.message),
            ),
        (userEntity) => emit(
              SigninSuccess(userEntity: userEntity),
            )); //if success emit this state and pass the user to UI
  }

   Future<void> signInWithFacebook() async {
    emit(SigninLoading());
    final result = await authRepo.signInWithFacebook();
    result.fold(
        (failure) => emit(
              SigninFairlure(message: failure.message),
            ),
        (userEntity) => emit(
              SigninSuccess(userEntity: userEntity),
            )); //if success emit this state and pass the user to UI
  } 
}
