import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/features/authentication/presentation/screens/login_screen.dart';
import 'package:task_app/features/authentication/presentation/screens/register_screen.dart';
import 'package:task_app/features/home/presentation/screens/home_screen.dart';
import 'package:task_app/features/splash/splash_screen.dart';
import '../../features/profile/presentation/screens/contact_us_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';


abstract class AppRouter {
  static const kLoginScreen = '/loginScreen';
  static const kRegisterScreen = '/registerScreen';
  static const kHomeScreen = '/homeScreen';
  static const kChildBotsOfMAinScreen = '/childBotsOfMainScreen';
  static const kProfileScreen = '/profileScreen';
  static const kContactUsScreen = '/contactUsScreen';

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
      GoRoute(
        path: kProfileScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileScreen();
        },
      ),
      GoRoute(
        path: kContactUsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const ContactUsScreen();
        },
      ),
 ]);
}