import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:sachin_enterprises/features/booking/view/booking_screen.dart";
import "package:sachin_enterprises/features/fav/view/fav_screen.dart";
import "package:sachin_enterprises/features/home/view/home_screen.dart";
import "package:sachin_enterprises/features/login/view/login_screen.dart";
import "package:sachin_enterprises/features/product/view/product_screen.dart";
import "package:sachin_enterprises/features/profile/view/profile_screen.dart";
import "package:sachin_enterprises/features/signup/view/signup_screen.dart";
import "package:sachin_enterprises/features/splash/view/splash_screen.dart";
import "package:sachin_enterprises/routes/route_constants.dart";

class AppRoutes {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: RouteConstants.splash,
    routes: <RouteBase>[
      GoRoute(
        path: RouteConstants.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),

      GoRoute(
        path: RouteConstants.splash,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),

      GoRoute(
        path: RouteConstants.signup,
        builder: (BuildContext context, GoRouterState state) {
          return SignupScreen();
        },
      ),

      GoRoute(
        path: RouteConstants.login,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),

      GoRoute(
        path: RouteConstants.product,
        builder: (BuildContext context, GoRouterState state) {
          return const ProductScreen();
        },
      ),

      GoRoute(
        path: RouteConstants.fav,
        builder: (BuildContext context, GoRouterState state) {
          return const FavScreen();
        },
      ),

      GoRoute(
        path: RouteConstants.booking,
        builder: (BuildContext context, GoRouterState state) {
          return const BookingScreen();
        },
      ),

      GoRoute(
        path: RouteConstants.profile,
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileScreen();
        },
      ),
    ],
  );
}
