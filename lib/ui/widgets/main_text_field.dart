import 'package:bird_task/utils/assets/asset_link.dart';
import 'package:bird_task/utils/colors/app_color.dart';
import 'package:flutter/material.dart';
import '../../utils/fonts_size/fonts_size.dart';
import '../../utils/helper_methods.dart';

enum InputType { email, password }

class MainTextField extends StatelessWidget {
  final String? text;

  final InputType type;
  final TextEditingController? controller;

  const MainTextField({
    Key? key,
    this.text,

    this.controller,
    this.type = InputType.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: type == InputType.password ? true : false,
      style: TextStyle(
          color: AppColor.pink,
          fontSize: FontsSize.h4,
          fontWeight: FontWeight.w400),
      keyboardType: type == InputType.email
          ? TextInputType.emailAddress
          : TextInputType.visiblePassword,
      onTapOutside: (event) => FocusManager.instance.primaryFocus!.unfocus(),
      decoration: InputDecoration(
        filled: true,
        hintText: text,
        prefixIcon: Padding(
          padding: EdgeInsets.all(widthSize(context, 20)),
          child: Image.asset(
            type == InputType.email ? AssetsLink.email : AssetsLink.passLock,
            height: widthSize(context, 18),
            width: widthSize(context, 18),
            fit: BoxFit.scaleDown,
            color: AppColor.pink,
          ),
        ),
        fillColor: AppColor.white,
        hintStyle: TextStyle(
          color: AppColor.pink,
          fontSize: FontsSize.h4,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: AppColor.grey.withOpacity(.5),
            )),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColor.grey.withOpacity(.5)),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: AppColor.grey.withOpacity(.5))),
      ),
    );
  }
}

/*


 */
