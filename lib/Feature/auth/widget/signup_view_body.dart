import 'package:decore_app/Feature/auth/widget/have_account_widget.dart';
import 'package:decore_app/Feature/auth/widget/social_login_button.dart';
import 'package:decore_app/Feature/auth/widget/terms_and_condition.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_text_field.dart';
import '../signin_view.dart';
import 'custom_password_field.dart';
import 'or_divider.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final formKey = GlobalKey<FormState>();

  late String email, password, fullName , birthDate;
  late int number; 


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
                        password = value!;
                      },
                    ),
                     PasswordField(
                      title: "Confirm Password",
                      onSaved: (value) {
                        password = value!;
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    TermsAndConditionsWidget(),
                    CustomButton(
                      text: 'Sign Up',
                      onPressed: () {},
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyles.spartanSemiBold15,
                    ),
                    OrDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialLoginButton(
                            image: Assets.imgFacebook_Icon, onPressed: () {}),
                        SizedBox(width: 8),
                        SocialLoginButton(
                            image: Assets.imgGoogle_Icon, onPressed: () {})
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
