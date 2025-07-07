import 'package:decore_app/Feature/auth/presentaion/cubit/signup_cubit/signup_cubit.dart';
import 'package:decore_app/Feature/auth/presentaion/view/Forgot_passwprd_view.dart';
import 'package:decore_app/Feature/home/presentation/view/main_view.dart';
import 'package:decore_app/core/services/get_it_services.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:decore_app/core/widgets/custom_snackBar.dart';
import 'package:decore_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/repos/auth_repo.dart';
import '../signin_view.dart';
import 'custom_password_field.dart';
import 'have_account_widget.dart';
import 'or_divider.dart';
import 'social_login_button.dart';
import 'terms_and_condition.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final formKey = GlobalKey<FormState>();

  late String email, password1, password2, fullName, birthDate;
  late int number;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: formKey,
                autovalidateMode: _autovalidateMode,
                child: Column(
                  spacing: MediaQuery.of(context).size.height * 0.02,
                  children: [
                    CustomTextFormField(
                      title: "Full Name",
                      onSaved: (value) {
                        fullName = value!;
                      },
                      hintText: "Momen Mohamed Rizq",
                      textInputType: TextInputType.name,
                    ),
                    CustomTextFormField(
                      title: "Email",
                      onSaved: (value) {
                        email = value!;
                      },
                      hintText: "example@example.com",
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomTextFormField(
                      title: "Mobile Number",
                      onSaved: (value) {
                        number = int.parse(value!);
                      },
                      hintText: "0123456789",
                      textInputType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      title: "Birth Date",
                      onSaved: (value) {
                        birthDate = value!;
                      },
                      hintText: "20/01/2002",
                      textInputType: TextInputType.datetime,
                    ),
                    PasswordField(
                      title: "Password",
                      onSaved: (value) {
                        password1 = value!;
                      },
                    ),
                    PasswordField(
                      title: "Confirm Password",
                      onSaved: (value) {
                        password2 = value!;
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    TermsAndConditionsWidget(),
                    CustomButton(
                      text: 'Sign Up',
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          if (password1 == password2) {
                            formKey.currentState!.save();
                            context
                                .read<SignupCubit>()
                                .createUserWithEmailAndPassword(
                                  email,
                                  password1,
                                  fullName,
                                  number.toString(),
                                  birthDate,
                                );
                          } else {
                            CustomSnackBar(context, "Passwords do not match");
                          }
                        } else {
                          _autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(ForgotPasswprdView.routeName);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.spartanSemiBold15,
                      ),
                    ),
                    OrDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialLoginButton(
                            image: Assets.imgFacebookIcon,
                            onPressed: () {
                              context.read<SignupCubit>().signUpWithFacebook();
                            }),
                        SizedBox(width: 8),
                        SocialLoginButton(
                            image: Assets.imgGoogleIcon,
                            onPressed: () {
                              context.read<SignupCubit>().signupWithGoogle();
                            })
                      ],
                    ),
                    HaveAnAccountWidget(
                        firstWord: "Already have an account?",
                        secondWord: "Sign In",
                        onTap: () {
                          Navigator.of(context).pushNamed(SigninView.routeName);
                        }),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
