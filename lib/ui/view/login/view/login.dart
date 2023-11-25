import 'package:bird_task/ui/view/login/login_cubit/login_cubit.dart';
import 'package:bird_task/ui/view/login/view/widgets/other_signup_option.dart';
import 'package:bird_task/ui/view/login/view/widgets/password_options.dart';
import 'package:bird_task/ui/widgets/main_button.dart';
import 'package:bird_task/ui/widgets/main_text.dart';
import 'package:bird_task/ui/widgets/main_text_field.dart';
import 'package:bird_task/utils/assets/asset_link.dart';
import 'package:bird_task/utils/colors/app_color.dart';
import 'package:bird_task/utils/fonts_size/fonts_size.dart';
import 'package:bird_task/utils/helper_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginStates>(
        builder: (context, state) {
          LoginCubit cubit = BlocProvider.of(context);
          return Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: widthSize(context, 15)),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(AssetsLink.background),
                fit: BoxFit.fill,
              )),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(top: heightSize(context, 15)),
                child: Column(
                  children: [
                    MainText(
                        text: "Welcome Back!",
                        fontSize: FontsSize.h2,
                        color: AppColor.black),
                    MainText(
                        text: "login to continue Radio App",
                        fontSize: FontsSize.h3,
                        color: AppColor.black),
                    SizedBox(
                      height: heightSize(context, 25),
                    ),
                    MainTextField(
                        text: "Email Address",
                        controller: cubit.emailController),
                    SizedBox(
                      height: heightSize(context, 50),
                    ),
                    MainTextField(
                        text: "Password",
                        type: InputType.password,
                        controller: cubit.passController),
                    SizedBox(
                      height: heightSize(context, 70),
                    ),
                    const PasswordOption(),
                    SizedBox(
                      height: heightSize(context, 30),
                    ),
                    MainButton(
                      isLoading: state is LoginLoadingState,
                      text: "Log In",
                      onPressed: () async {
                        cubit.login();
                      },
                      textColor: AppColor.white,
                      bgColor: AppColor.pink,
                    ),
                    SizedBox(
                      height: heightSize(context, 50),
                    ),
                    MainText(
                        text: "OR",
                        fontSize: FontsSize.h4,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black),
                    const OtherSignUpOption(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MainText(
                            text: "Don’t have an account?",
                            fontSize: FontsSize.h3,
                            color: AppColor.black),
                        MainText(
                            text: "Sign up",
                            fontSize: FontsSize.h3,
                            color: AppColor.pink),
                      ],
                    ),
                    SizedBox(
                      height: heightSize(context, 50),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: widthSize(context, 10)),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "By Signing up you indicate that you have read and agreed th the patch",
                              style: TextStyle(
                                  color: AppColor.black.withOpacity(.8),
                                  fontSize: FontsSize.h6),
                            ),
                            TextSpan(
                                text: "Terms of Services",
                                style: TextStyle(
                                    color: AppColor.pink,
                                    fontSize: FontsSize.h6),
                                onEnter: (v) {}),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: heightSize(context, 40),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
