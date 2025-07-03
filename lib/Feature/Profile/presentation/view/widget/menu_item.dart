import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function()? onTap;

  const MenuItem({super.key, required this.icon, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppTheme.secondaryColor,
        child: Icon(icon, color: Colors.black),
      ),
      title: Text(label),
      onTap: onTap, // Add navigation logic
    );
  }
}