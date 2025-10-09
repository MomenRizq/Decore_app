import 'package:decore_app/Feature/cart/data/repos/cart_repo_imp.dart';
import 'package:decore_app/Feature/cart/presentation/cubit/cart_cubit.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/appbar_home_widget.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/home_view_body.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/custom_nav_bottom_bar/custom_bottom_nav_bar.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/main_view_body.dart';
import 'package:decore_app/Feature/item_details/data/datasources/local/product_local_datasource.dart';
import 'package:decore_app/Feature/item_details/data/repo/product_repository_impl.dart';
import 'package:decore_app/Feature/item_details/domain/usecase/get_product.dart';
import 'package:decore_app/Feature/item_details/presentation/cubit/product_cubit.dart';
import 'package:decore_app/core/services/get_it_services.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: leftPadding, vertical: topPadding),
        child: MainViewBody(
          currentViewIndex: currentViewIndex,
        ),
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
