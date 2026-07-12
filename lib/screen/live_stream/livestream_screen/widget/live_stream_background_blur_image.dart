import 'dart:ui';

import 'package:figma_squircle_updated/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortzz/utilities/asset_res.dart';
import 'package:shortzz/utilities/color_res.dart';

class LiveStreamBlurBackgroundImage extends StatelessWidget {
  const LiveStreamBlurBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetRes.icBackground), fit: BoxFit.cover)),
      child: ClipSmoothRect(
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 160, sigmaY: 160),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    ColorRes.themeAccentSolid.withValues(alpha: .48),
                    const Color(0xFF6F5617).withValues(alpha: .55),
                    Colors.black.withValues(alpha: .72),
                  ],
                  stops: const [.0, .46, 1],
                ),
              ),
            )),
      ),
    );
  }
}
