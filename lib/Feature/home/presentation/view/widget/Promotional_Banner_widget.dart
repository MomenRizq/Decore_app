import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromotionalBannerWidget extends StatefulWidget {
  final List<String> banners;
  final double height;
  final bool isSvg;

  const PromotionalBannerWidget({
    super.key,
    required this.banners,
    this.height = 150,
    this.isSvg = true, // لو الصور SVG، خليه true
  });

  @override
  State<PromotionalBannerWidget> createState() => _PromotionalBannerWidgetState();
}

class _PromotionalBannerWidgetState extends State<PromotionalBannerWidget> {
  late final PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 1);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: widget.height,
            child: PageView.builder(
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              itemCount: widget.banners.length,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.asset(widget.banners[index], fit: BoxFit.fill,)
                        
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.banners.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: _currentIndex == index ? 20 : 20,
                height: 7,
                decoration: BoxDecoration(
                  color: _currentIndex == index ? AppTheme.primaryColor : AppTheme.secondaryColor,
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
