import 'package:decore_app/Feature/auth/domain/repos/auth_repo.dart';
import 'package:decore_app/Feature/auth/presentaion/cubit/signup_cubit/signup_cubit.dart';
import 'package:decore_app/Feature/auth/presentaion/cubit/signup_cubit/signup_state.dart';
import 'package:decore_app/Feature/auth/presentaion/view/widget/custom_app_bar_auth.dart';
import 'package:decore_app/Feature/home/presentation/view/main_view.dart';
import 'package:decore_app/core/services/get_it_services.dart';
import 'package:decore_app/core/widgets/custom_snackBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'widget/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'SignupView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBarAuth(context, title: 'Create Account'),
        body: BlocConsumer<SignupCubit, SignupState>(
          listener: (context, state) {
            if (state is SignupSuccess) {
              CustomSnackBar(context, "Account created successfully",
                  color: Colors.green);
              Navigator.pop(context);
            } else if (state is SignupFairlure) {
              CustomSnackBar(context, state.message);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is SignupLoading,
              child: SafeArea(
                child: SignupViewBody(),
              ),
            );
          },
        ),
      ),
    );
  }
}
