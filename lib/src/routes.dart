import 'package:go_router/go_router.dart';

import 'app/features/auth/presentation/pages/auth_base_page.dart';
import 'app/features/auth/presentation/pages/login_page.dart';
import 'app/features/auth/presentation/pages/register_page.dart';
import 'app/features/auth/presentation/pages/welcome_page.dart';
import 'app/features/donate/presentation/pages/donate_img_page.dart';
import 'app/features/donate/presentation/pages/donate_info_page.dart';
import 'app/features/home/presentation/pages/filters_page.dart';
import 'app/features/home/presentation/pages/home_page.dart';
import 'core/features/choose/presentation/choose_page.dart';
import 'core/features/onboarding/presentation/pages/onboarding_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      //path: '/donate-info',
      //builder: (context, state) => const DonateInfoPage(),
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: '/filters',
      builder: (context, state) => const FiltersPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthBasePage(),
      routes: [
        GoRoute(
          path: 'login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: 'register',
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: 'welcome',
          builder: (context, state) => const WelcomePage(),
        ),
      ],
    ),
    GoRoute(
      path: '/choose',
      builder: (context, state) => const ChoosePage(),
    ),
    GoRoute(
      path: '/donate-info',
      builder: (context, state) => const DonateInfoPage(),
    ),
    GoRoute(
      path: '/donate-img',
      builder: (context, state) => const DonateImgPage(),
    ),
  ],
);
