import 'package:flutter/material.dart';

import '../../../../../utils/assets/asset_link.dart';
import '../../../../../utils/colors/app_color.dart';
import '../../../../../utils/helper_methods.dart';
import '../../../../widgets/main_button.dart';

class OtherSignUpOption extends StatelessWidget {
  const OtherSignUpOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: heightSize(context, 80),
        ),
        MainButton(
          text: "Continue with Google",
          icon: AssetsLink.google,
          onPressed: () {},
          textColor: AppColor.black,
          bgColor: AppColor.white,
        ),
        SizedBox(
          height: heightSize(context, 50),
        ),
        MainButton(
          text: "Sign In with Apple ID",
          icon: AssetsLink.apple,
          onPressed: () {},
          textColor: AppColor.white,
          bgColor: AppColor.black,
        ),
        SizedBox(
          height: heightSize(context, 50),
        ),
        MainButton(
          onPressed: () {},
          textColor: AppColor.white,
          bgColor: AppColor.facebookBTColor,
          text: "Continue with Facebook",
          icon: AssetsLink.facebook,
        ),
        SizedBox(
          height: heightSize(context, 50),
        ),
      ],
    );
  }
}
