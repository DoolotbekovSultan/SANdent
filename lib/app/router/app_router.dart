import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:san_dent/core/di/di.dart';
import 'package:san_dent/features/admin/ui/admin_home_screen.dart';
import 'package:san_dent/features/admin/ui/admin_main_screen.dart';
import 'package:san_dent/features/admin/ui/doctor_detail_screen.dart';
import 'package:san_dent/features/admin/ui/staff_screen.dart';
import 'package:san_dent/features/admin/ui/warehouse_screen.dart';
import 'package:san_dent/features/appointment/presentation/cubit/appointment_cubit.dart';
import 'package:san_dent/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:san_dent/features/auth/presentation/password_reset_screens.dart';
import 'package:san_dent/features/auth/presentation/register_screen.dart';
import 'package:san_dent/features/home/home_screen.dart';
import 'package:san_dent/features/login/login_screen.dart';
import 'package:san_dent/features/main_screen.dart';
import 'package:san_dent/features/material/domain/entities/material_entity.dart';
import 'package:san_dent/features/material/presentation/cubit/material_cubit.dart';
import 'package:san_dent/features/material/presentation/material_detail_screen.dart';
import 'package:san_dent/features/clinic/presentation/clinic_screen.dart';
import 'package:san_dent/features/clinic/presentation/cubit/clinic_cubit.dart';
import 'package:san_dent/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:san_dent/features/material_transaction/presentation/cubit/material_transaction_cubit.dart';
import 'package:san_dent/features/medical_record/presentation/cubit/medical_record_cubit.dart';
import 'package:san_dent/features/medical_record/presentation/cubit/patient_history_cubit.dart';
import 'package:san_dent/features/notification/presentation/cubit/notification_cubit.dart';
import 'package:san_dent/features/notification/presentation/notifications_screen.dart';
import 'package:san_dent/features/patient/domain/entities/patient_entity.dart';
import 'package:san_dent/features/user/domain/entities/user_entity.dart';
import 'package:san_dent/features/user/presentation/cubit/doctors_cubit.dart';
import 'package:san_dent/features/user/presentation/cubit/profile_cubit.dart';
import 'package:san_dent/features/patient/presentation/cubit/patient_cubit.dart';
import 'package:san_dent/features/patient/presentation/patients_screen.dart';
import 'package:san_dent/features/patients/ui/patient_medical_card_screen.dart';
import 'package:san_dent/features/procedure/presentation/cubit/procedure_cubit.dart';
import 'package:san_dent/features/procedure/presentation/procedures_screen.dart';
import 'package:san_dent/features/procedure_category/presentation/cubit/procedure_category_cubit.dart';
import 'package:san_dent/features/profile/ui/profile_screen.dart';
import 'package:san_dent/features/patient_document/presentation/cubit/patient_document_cubit.dart';
import 'package:san_dent/features/report/presentation/reports_screen.dart';
import 'package:san_dent/features/spash/spash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(
      path: '/login',
      builder: (context, state) => BlocProvider(
        create: (_) => getIt<AuthCubit>(),
        child: const LoginScreen(),
      ),
    ),
    // Registration (no role picker — `POST auth/register/` → auto-login).
    GoRoute(
      path: '/register',
      builder: (context, state) => BlocProvider(
        create: (_) => getIt<AuthCubit>(),
        child: const RegisterScreen(),
      ),
    ),
    // Password reset (`POST auth/password-reset/` + `/confirm/`).
    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
    GoRoute(
      path: '/reset-password',
      builder: (context, state) => const ResetPasswordScreen(),
    ),
    // Drill-down reports (director-only; linked from the admin home in P3).
    GoRoute(
      path: '/admin/reports',
      builder: (context, state) => const ReportsScreen(),
    ),
    // Clinics (director/admin — managed from admin dashboard entry).
    GoRoute(
      path: '/admin/clinics',
      builder: (context, state) => BlocProvider(
        create: (_) => getIt<ClinicCubit>()..load(),
        child: const ClinicsScreen(),
      ),
    ),
    // Notifications inbox (linked from the admin home notice box in F8).
    GoRoute(
      path: '/notifications',
      builder: (context, state) => BlocProvider(
        create: (_) => getIt<NotificationCubit>()..load(),
        child: const NotificationsScreen(),
      ),
    ),
    GoRoute(
      path: '/procedures',
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<ProcedureCubit>()..load()),
          BlocProvider(create: (_) => getIt<ProcedureCategoryCubit>()..load()),
        ],
        child: const ProceduresScreen(),
      ),
    ),
    // Dentist routes (bottom nav)
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => BlocProvider(
                create: (_) => getIt<AppointmentCubit>()..load(),
                child: const HomeScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/patients',
              builder: (context, state) => BlocProvider(
                create: (_) => getIt<PatientCubit>()..load(),
                child: const PatientsScreen(),
              ),
            ),
            GoRoute(
              path: '/patients/:id',
              builder: (context, state) {
                final patient = state.extra as PatientEntity;
                return MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (_) => getIt<PatientHistoryCubit>()
                        ..watchPatient(patient.id)
                        ..load(),
                    ),
                    BlocProvider(
                      create: (_) => getIt<MedicalRecordCubit>()..load(),
                    ),
                    BlocProvider(
                      create: (_) => getIt<PatientDocumentCubit>()
                        ..watchPatient(patient.id)
                        ..load(),
                    ),
                  ],
                  child: PatientMedicalCardScreen(patient: patient),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => BlocProvider(
                create: (_) => getIt<ProfileCubit>()..load(),
                child: const ProfileScreen(),
              ),
            ),
          ],
        ),
      ],
    ),
    // Admin routes (separate bottom nav)
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return AdminMainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/admin/home',
              builder: (context, state) => BlocProvider(
                create: (_) => getIt<DashboardCubit>()..load(),
                child: const AdminHomeScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/admin/staff',
              builder: (context, state) => BlocProvider(
                create: (_) => getIt<DoctorsCubit>()..load(),
                child: const StaffScreen(),
              ),
            ),
            GoRoute(
              path: '/admin/staff/:name',
              builder: (context, state) {
                final member = state.extra as UserEntity;
                return BlocProvider(
                  create: (_) => getIt<AppointmentCubit>()..load(),
                  child: DoctorDetailScreen(member: member),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/admin/warehouse',
              builder: (context, state) => BlocProvider(
                create: (_) => getIt<MaterialCubit>()..load(),
                child: const WarehouseScreen(),
              ),
              routes: [
                GoRoute(
                  path: ':id',
                  builder: (context, state) {
                    final material = state.extra as MaterialEntity;
                    return MultiBlocProvider(
                      providers: [
                        BlocProvider(
                          create: (_) =>
                              getIt<MaterialTransactionCubit>()
                                ..watchMaterial(material.id)
                                ..load(),
                        ),
                      ],
                      child: MaterialDetailScreen(material: material),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);