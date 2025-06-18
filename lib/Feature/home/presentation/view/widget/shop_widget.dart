import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ShopWidget extends StatelessWidget {
  const ShopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 30,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            'Shop Now',
            textAlign: TextAlign.center,
            style: TextStyles.spartanBold,
          ),
        ),
      ),
    );
    ;
  }
}
