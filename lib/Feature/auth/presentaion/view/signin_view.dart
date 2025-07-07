import 'package:decore_app/Feature/auth/domain/repos/auth_repo.dart';
import 'package:decore_app/Feature/auth/presentaion/cubit/signin_cubit/signin_cubit.dart';
import 'package:decore_app/Feature/auth/presentaion/view/widget/signin_view_body.dart';
import 'package:decore_app/Feature/auth/presentaion/view/widget/custom_app_bar_auth.dart';
import 'package:decore_app/Feature/home/presentation/view/main_view.dart';
import 'package:decore_app/core/services/get_it_services.dart';
import 'package:decore_app/core/widgets/custom_snackBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeName = 'SigninView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBarAuth(
          context,
          title: "Log In",
        ),
        body: BlocConsumer<SigninCubit, SigninState>(
          listener: (context, state) {
            if (state is SigninSuccess) {
              CustomSnackBar(context, "Logged in successfully",
                  color: Colors.green);
              Future.delayed(const Duration(seconds: 1), () {
                Navigator.pushReplacementNamed(context, MainView.routeName);
              });
            }if(state is SigninFairlure){
                CustomSnackBar(context, state.message);
              }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is SigninLoading,
              child: SafeArea(child: SigninViewBody()),
            );
          },
        ),
      ),
    );
  }
}
