import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
           CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(Assets.imgOnboardin1),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 4, right: 4),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppTheme.secondaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.camera_alt, size: 18),
            )
          ],
        ),
      ],
    );
  }
}
