import 'package:decore_app/Feature/auth/domain/entities/user_entity.dart';

sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {

  final UserEntity userEntity;

  SignupSuccess({required this.userEntity});
}

final class SignupFairlure extends SignupState {

  final String message ;

  SignupFairlure({required this.message});
}
