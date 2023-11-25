import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../utils/colors/app_color.dart';
import '../../utils/helper_methods.dart';

class CircleIndicator extends StatelessWidget {
  const CircleIndicator({Key? key, this.size = 30}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.hexagonDots(
      color: AppColor.pink,
      size: heightSize(context, size),
    );
  }
}
