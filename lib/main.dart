import 'package:bird_task/ui/view/login/view/login.dart';
import 'package:bird_task/utils/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/services/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  runApp(const BirdTask());
}

class BirdTask extends StatelessWidget {
  const BirdTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
    );

    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
