import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/utils/theme_data.dart';
import 'package:task_app/features/splash/splash_screen.dart';
import 'core/utils/app_router.dart';
import 'core/utils/bloc_observe.dart';
import 'core/utils/local_storage.dart';
import 'core/utils/service_locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  await CacheHelper.init();

  Constance.accessToken = CacheHelper.getData(key: 'token');


  // print('main token ----- $accessToken');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child)=> MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Smart Trade',
        themeMode: ThemeMode.dark,
        theme: CustomThemeData.themeData,
      ),
    );
  }
}

