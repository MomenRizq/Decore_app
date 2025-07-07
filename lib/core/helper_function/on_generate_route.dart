import 'package:decore_app/Feature/Profile/presentation/view/profile_view.dart';
import 'package:decore_app/Feature/Profile/presentation/view/widget/edit_profile_view.dart';
import 'package:decore_app/Feature/Splash/presntation/view/welcome_view.dart';
import 'package:decore_app/Feature/auth/presentaion/view/Forgot_passwprd_view.dart';
import 'package:decore_app/Feature/auth/presentaion/view/signin_view.dart';
import 'package:decore_app/Feature/auth/presentaion/view/signup_view.dart';
import 'package:decore_app/Feature/cart/presentation/views/cart_view.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/checkout_view.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/state_order_view.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/track_view.dart';
import 'package:decore_app/Feature/categories/presentation/view/widget/category_detiles_view.dart';
import 'package:decore_app/Feature/home/presentation/view/home_view.dart';
import 'package:decore_app/Feature/home/presentation/view/main_view.dart';
import 'package:decore_app/Feature/onboarding/presentation/view/onboarding_view.dart';
import 'package:decore_app/Feature/item_details/presentation/views/details_of_item_view.dart';
import 'package:decore_app/Feature/wishlist/presentation/view/wishlist_view.dart';
import 'package:flutter/material.dart';
import '../../Feature/Profile/presentation/view/widget/order_view.dart';
import '../../Feature/Splash/presntation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case WelcomeView.routeName:
      return MaterialPageRoute(builder: (_) => const WelcomeView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (_) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (_) => const SignupView());
    case ForgotPasswprdView.routeName:
      return MaterialPageRoute(builder: (_) => const ForgotPasswprdView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (_) => const MainView());
    case CategoryDetilesView.routeName:
      return MaterialPageRoute(builder: (_) => const CategoryDetilesView());
    case DetailsOfItemview.routeName:
      return MaterialPageRoute(builder: (_) => const DetailsOfItemview());
    case CartView.routeName:
      return MaterialPageRoute(builder: (_) => const CartView());
    case CheckoutView.routeName:
      return MaterialPageRoute(builder: (_) => const CheckoutView());
    case StateOrderView.routeName:
      return MaterialPageRoute(builder: (_) => const StateOrderView());
    case TrackView.routeName:
      return MaterialPageRoute(builder: (_) => const TrackView());
    case WishlistView.routeName:
      return MaterialPageRoute(builder: (_) => const WishlistView());
    case ProfileView.routeName:
      return MaterialPageRoute(builder: (_) => const ProfileView());
    case EditProfileView.routeName:
      return MaterialPageRoute(builder: (_) => const EditProfileView());
    case OrderView.routeName:
      return MaterialPageRoute(builder: (_) => const OrderView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
