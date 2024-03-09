import 'package:go_router/go_router.dart';
import 'package:indicatorsa_application/features/indicatorsa/presentation/views/indectors_view.dart';
import 'package:indicatorsa_application/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/indectorsView',
        builder: (context, state) => IndectorsView(),
      ),
    ],
  );
}
