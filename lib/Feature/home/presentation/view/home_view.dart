import 'package:decore_app/Feature/home/presentation/view/widget/appbar_home_widget.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const SafeArea(
          child: HomeViewBody(),
        ));
  }
}
