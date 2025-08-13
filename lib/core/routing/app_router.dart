import 'package:go_router/go_router.dart';
import 'package:marketi_ecommerce/views/onbording.dart';
class AppRouter{
  static final GoRouter router = GoRouter(
    initialLocation: '/onboarding',
    routes: [
      GoRoute(
     
        path: '/lib/views/onbording',
        builder: (context, state) =>  OnboardingScreen(),
      ),
      // GoRoute(
      //   path: '/home',
      //   builder: (context, state) => const HomeScreen(),
      // ),
    ],
  );


}