import 'package:decore_app/Feature/auth/view/Forgot_passwprd_view.dart';
import 'package:decore_app/Feature/auth/view/widget/have_account_widget.dart';
import 'package:decore_app/Feature/auth/view/widget/social_login_button.dart';
import 'package:decore_app/Feature/home/presentation/view/home_view.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/widgets/custom_text_auth.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:decore_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'custom_password_field.dart';
import 'or_divider.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final formKey = GlobalKey<FormState>();

  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextAuth(
              title: "Welcome",
              subTitle: "Please enter your details to proceed.",
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      title: "Email",
                      onSaved: (value) {
                        email = value!;
                      },
                      hintText: "example@example.com",
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    PasswordField(
                      title: "Password",
                      onSaved: (value) {
                        password = value!;
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    CustomButton(
                      text: 'Login',
                      onPressed: () => Navigator.pushNamed(context, HomeView.routeName),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, ForgotPasswprdView.routeName),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.spartanSemiBold15,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    OrDivider(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialLoginButton(
                            image: Assets.imgFacebookIcon, onPressed: () {}),
                        SizedBox(width: 8),
                        SocialLoginButton(
                            image: Assets.imgGoogleIcon, onPressed: () {})
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    HaveAnAccountWidget(
                        firstWord: "Don't have an account?",
                        secondWord: "Sign Up",
                        onTap: () {
                         Navigator.pop(context);
                        }),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
