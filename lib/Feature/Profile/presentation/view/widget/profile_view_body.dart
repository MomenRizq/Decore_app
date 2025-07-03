import 'package:decore_app/Feature/Profile/presentation/view/widget/order_view.dart';
import 'package:decore_app/Feature/Profile/presentation/view/widget/tab_item.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_appbar_profile.dart';
import 'menu_item.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBarProfile(title: 'Profile' , editIcon: true,),
          const SizedBox(height: 20),
          // Profile Image
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                Assets.imgOnboardin4), // Replace with your asset
          ),
          const SizedBox(height: 10),
          // Name & ID
          const Text(
            'Madison Smith',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'ID: 25030024',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 20),
          // Menu List
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column( 
              children: [
                MenuItem(
                    icon: Icons.local_offer_outlined, label: 'My Orders' ,
                    onTap: () {
                      Navigator.pushNamed(context, OrderView.routeName);
                    }),
                MenuItem(
                    icon: Icons.privacy_tip_outlined, label: 'Privacy Policy'),
                MenuItem(icon: Icons.credit_card, label: 'Payment Methods'),
                MenuItem(icon: Icons.notifications_none, label: 'Notification'),
                MenuItem(icon: Icons.settings_outlined, label: 'Settings'),
                MenuItem(icon: Icons.help_outline, label: 'Help'),
                MenuItem(icon: Icons.logout, label: 'Logout'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
