import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/features/splash/splash_screen.dart';

import 'core/utils/bloc_observe.dart';
import 'core/utils/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  setupServiceLocator();


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
      builder: (_,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            sliderTheme: const SliderThemeData(
              activeTrackColor: Colors.blueAccent,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)
            ),
            fontFamily: 'Lato',
            iconTheme: const IconThemeData(
                color: Colors.white
            ),
            scrollbarTheme: const ScrollbarThemeData().copyWith(
              radius: const Radius.circular(20.0),
              thumbVisibility: MaterialStateProperty.all(true),
              thumbColor:  MaterialStateProperty.all(Colors.yellow),
              crossAxisMargin: -10
            ),
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.black26,
                iconTheme: const IconThemeData(
                  color: Colors.white,
                ),
                titleTextStyle: TextStyle(color: Colors.white,fontSize: 22.5.sp,fontFamily: 'Lato')
            )
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

