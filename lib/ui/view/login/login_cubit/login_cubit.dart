import 'package:bird_task/core/services/cache_helper.dart';
import 'package:bird_task/utils/helper_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/dio_helper.dart';
import '../login_model/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginStates());
  final emailController = TextEditingController();
  final passController = TextEditingController();

// login
  Future<void> login() async {
    emit(LoginLoadingState());
    final response = await DioHelper().post('login', data: {
      "email": emailController.text,
      "password": passController.text,
    });
    if (response.isSuccess) {
      final data = LoginModel.fromJson(response.response!.data);
      // save token
      CacheHelper.setValue("token", data.accessToken);
      CacheHelper.setValue("tokenType", data.tokenType);
      emit(LoginSuccessState(model: data));
    } else {
      emit(LoginFailedState(msg: response.message));
    }
  }
}
