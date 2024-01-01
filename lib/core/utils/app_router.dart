import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/features/authentication/presentation/screens/login_screen.dart';
import 'package:task_app/features/authentication/presentation/screens/register_screen.dart';
import 'package:task_app/features/home/presentation/screens/home_screen.dart';
import 'package:task_app/features/splash/splash_screen.dart';


abstract class AppRouter {
  static const kHomeScreen = '/homeScreen';
  static const kLoginScreen = '/loginScreen';
  static const kRegisterScreen = '/registerScreen';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: kRegisterScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterScreen();
        },
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
 ]);
}