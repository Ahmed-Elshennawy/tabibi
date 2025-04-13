import 'package:go_router/go_router.dart';
import 'package:tabibi/features/auth/presentation/pages/login_page.dart';
import 'package:tabibi/features/auth/presentation/pages/signup_page.dart';

abstract class AppRouter {
  static const signupPage = '/signupPage';
  static const loginPage = '/loginPage';

  static final router = GoRouter(
    initialLocation: loginPage,
    routes: [
      GoRoute(
        path: signupPage,
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        path: loginPage,
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );
}
