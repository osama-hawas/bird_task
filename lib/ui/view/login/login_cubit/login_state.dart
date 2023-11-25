part of 'login_cubit.dart';

class LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  final LoginModel model;

  LoginSuccessState({
    required this.model,
  }) {
    showMSG(message: "Login Success");
  }
}

class LoginFailedState extends LoginStates {
  final String msg;

  LoginFailedState({required this.msg}) {
    showMSG(message: msg);
  }
}
