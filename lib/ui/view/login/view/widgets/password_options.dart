import 'package:flutter/material.dart';

import '../../../../../utils/colors/app_color.dart';
import '../../../../../utils/fonts_size/fonts_size.dart';
import '../../../../../utils/helper_methods.dart';
import '../../../../widgets/main_text.dart';

class PasswordOption extends StatelessWidget {
  const PasswordOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(widthSize(context, 150)),
          decoration: BoxDecoration(
              color: AppColor.white,
              border: Border.all(color: AppColor.grey.withOpacity(.5)),
              borderRadius: BorderRadius.circular(2000)),
          child: Icon(
            Icons.check,
            size: widthSize(context, 40),
            color: AppColor.red,
          ),
        ),
        SizedBox(
          width: widthSize(context, 80),
        ),
        MainText(
            text: "Remember me",
            fontSize: FontsSize.h5,
            fontWeight: FontWeight.bold,
            color: AppColor.black),
        const Spacer(),
        MainText(
            text: "Forgot password?",
            fontSize: FontsSize.h5,
            color: AppColor.grey),
      ],
    );
  }
}
