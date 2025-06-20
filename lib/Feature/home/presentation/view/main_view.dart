import 'package:decore_app/Feature/home/presentation/view/widget/appbar_home_widget.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/home_view_body.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/custom_nav_bottom_bar/custom_bottom_nav_bar.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/main_view_body.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = 'MainView';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: MainViewBody(
        currentViewIndex: currentViewIndex,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        onItemTapped: (index) {
          currentViewIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
