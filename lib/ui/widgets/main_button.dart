import 'package:flutter/material.dart';

import '../../utils/colors/app_color.dart';
import '../../utils/fonts_size/fonts_size.dart';
import '../../utils/helper_methods.dart';
import 'cicle_indicator.dart';
import 'main_text.dart';

class MainButton extends StatelessWidget {
  final String text;
  final String? icon;
  final Color bgColor, textColor;
  final VoidCallback onPressed;

  final bool isLoading;

  const MainButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.bgColor,
    this.isLoading = false,
    required this.textColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SizedBox(
            height: heightSize(context, 22),
            child: const Center(child: CircleIndicator()))
        : ElevatedButton(
            onPressed: () {
              FocusManager.instance.primaryFocus!.unfocus();
              onPressed();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
              elevation: 3,
              shadowColor: AppColor.grey.withOpacity(.7),
              minimumSize: Size(double.infinity, heightSize(context, 14)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.only(end: widthSize(context, 40)),
                    child: Image.asset(
                      icon!,
                      height: widthSize(context, 18),
                      width: widthSize(context, 18),
                      fit: BoxFit.fill,
                    ),
                  ),
                MainText(text: text, fontSize: FontsSize.h4, color: textColor),
              ],
            ));
  }
}
