class UserEntity {
  final String email;
  final String name;
  final String uid;
  final String mobileNumber;
  final String birthDate;
  UserEntity(
      {required this.uid,
      required this.email,
      required this.name,
      required this.mobileNumber,
      required this.birthDate});
}
