import 'package:decore_app/core/widgets/custom_container_Text.dart';
import 'package:decore_app/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, this.isvisible = true, required this.title, required this.subTitle});

  final String image , title , subTitle;

  final bool isvisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(34),
          ),
          child: Image.asset(
            image,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.12,
        ),
        CustomHeaderText(text: title),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        CustomContainerText(subTitle: subTitle)
      ],
    );
  }
}
