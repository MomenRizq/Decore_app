import 'package:decore_app/Feature/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.name,
      required super.email,
      required super.uid,
      required super.mobileNumber,
      required super.birthDate});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uid: user.uid,
      mobileNumber: user.phoneNumber ?? '',
      birthDate:
          '', // Firebase User does not have a birth date field, set as empty
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      uid: json['uid'] ?? '',
      mobileNumber: json['mobileNumber'] ?? '',
      birthDate: json['birthDate'] ?? '',
    );
  }

  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      name: user.name,
      email: user.email,
      uid: user.uid,
      mobileNumber: user.mobileNumber,
      birthDate: user.birthDate,
    );
  }

  toMap() {
    return {
      'name': name,
      'email': email,
      'uId': uid,
      'mobileNumber': mobileNumber,
      'birthDate': birthDate
    };
  }
}
