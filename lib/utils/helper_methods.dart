import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'colors/app_color.dart';
import 'fonts_size/fonts_size.dart';

double heightSize(BuildContext context, height) {
  double heightSize = MediaQuery.of(context).size.height / height;
  return heightSize;
}

double widthSize(BuildContext context, width) {
  double widthSize = MediaQuery.of(context).size.width / width;
  return widthSize;
}

void showMSG({required String message}) {
  if (message.isNotEmpty) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColor.pink,
        textColor: Colors.white,
        fontSize: FontsSize.h3);
  }
}
