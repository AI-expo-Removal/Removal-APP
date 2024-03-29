import 'package:go_router/go_router.dart';
import 'package:removal_flutter/core/view/splash_screen.dart';
import 'package:removal_flutter/presentation/login/view/login_screen.dart';
import 'package:removal_flutter/presentation/main/view/main_screen.dart';
import 'package:removal_flutter/presentation/my_page/view/my_page_screen.dart';
import 'package:removal_flutter/presentation/on_boarding/view/on_boarding_screen.dart';
import 'package:removal_flutter/presentation/sign_up/view/sign_up_id_pw_screen.dart';
import 'package:removal_flutter/presentation/sign_up/view/sign_up_user_info_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/signUpUserInfo',
      builder: (context, state) => const SignUpUserInfoScreen(),
    ),
    GoRoute(
      path: '/signUpIdPw',
      builder: (context, state) {
        return SignUpIdPwScreen(
          name: state.extra.toString(),
          phoneNumber: state.extra.toString(),
        );
      },
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/myPage',
      builder: (context, state) => const MyPageScreen(),
    ),
  ],
);
