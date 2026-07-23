import 'package:go_router/go_router.dart';
import 'package:san_dent/features/home/home_screen.dart';
import 'package:san_dent/features/login/login_screen.dart';
import 'package:san_dent/features/main_screen.dart';
import 'package:san_dent/features/patients/ui/patients_screen.dart';
import 'package:san_dent/features/profile/ui/profile_screen.dart';
import 'package:san_dent/features/spash/spash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/patients',
              builder: (context, state) => const PatientsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
