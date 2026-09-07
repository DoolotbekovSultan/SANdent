import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/core/di/di.dart';
import 'package:san_dent/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:san_dent/features/user/domain/entities/user_entity.dart';
import 'package:san_dent/features/user/domain/parameters/user_params.dart';
import 'package:san_dent/features/user/presentation/cubit/profile_cubit.dart';

/// Profile (design kept, data from [ProfileCubit] = `GET /me/`).
///
/// Backend-driven cuts: no avatar image (person-icon placeholder), no
/// specialization field (role + phone shown instead), no check-in endpoint
/// (the old "Отметиться" button is replaced with password change + logout).
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<void> _logout(BuildContext context) async {
    await getIt<AuthCubit>().logout();
    if (context.mounted) context.go('/login');
  }

  Future<void> _showPasswordDialog(BuildContext context) async {
    final oldController = TextEditingController();
    final newController = TextEditingController();
    final ok = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Смена пароля'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: oldController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Старый пароль'),
            ),
            TextField(
              controller: newController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Новый пароль'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () {
              final error = CreateUserParams.validatePassword(
                newController.text,
              );
              if (error != null) {
                ScaffoldMessenger.of(
                  dialogContext,
                ).showSnackBar(SnackBar(content: Text(error)));
                return;
              }
              Navigator.of(dialogContext).pop(true);
            },
            child: const Text('Сохранить'),
          ),
        ],
      ),
    );
    if (ok != true || !context.mounted) return;
    final changed = await context.read<ProfileCubit>().changePassword(
      oldPassword: oldController.text,
      newPassword: newController.text,
    );
    if (changed && context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Пароль изменён')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<ProfileCubit>();
    return Scaffold(
      backgroundColor: const Color(0xFF2773BB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2773BB),
        title: Text(
          'Профиль',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: .w800,
            fontSize: 17,
            letterSpacing: 1.02,
            height: 1,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: .only(top: 115),
            child: Container(
              width: .infinity,
              height: .infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: .only(
                  topLeft: .circular(46),
                  topRight: .circular(46),
                ),
              ),
            ),
          ),
          Container(
            alignment: .center,
            padding: .only(top: 55, left: 16, right: 16),
            child: BlocConsumer<ProfileCubit, NexoAsyncState<UserEntity>>(
              listener: (context, state) {
                final failure = state.failureOrNull;
                if (failure != null) showFailureSnackBar(context, failure);
              },
              builder: (context, state) {
                return NexoAsyncStateBuilder<UserEntity>(
                  state: state,
                  loading: (_) => const NexoSkeletonList(itemCount: 2),
                  success: (_, user) => _ProfileInfo(
                    user: user,
                    onChangePassword: () => _showPasswordDialog(context),
                    onLogout: () => _logout(context),
                  ),
                  failure: (_, failure) => NexoFailureView(
                    failure: failure,
                    onRetry: () => cubit.retry(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  final UserEntity user;
  final VoidCallback onChangePassword;
  final VoidCallback onLogout;

  const _ProfileInfo({
    required this.user,
    required this.onChangePassword,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(
            color: Color(0xFFD9D9D9),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.person, size: 64, color: Colors.white),
        ),
        const SizedBox(height: 17),
        Text(
          user.displayName,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.9,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          [
            if ((user.roleDisplay ?? '').isNotEmpty) user.roleDisplay!,
            if ((user.phone ?? '').isNotEmpty) user.phone!,
          ].join(' • '),
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.9,
          ),
        ),
        const SizedBox(height: 17),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onChangePassword,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Сменить пароль',
              style: GoogleFonts.poppins(
                color: const Color(0xFF020202),
                letterSpacing: 0,
                height: 1,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onLogout,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE0524F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Выйти',
              style: GoogleFonts.poppins(
                color: Colors.white,
                letterSpacing: 0,
                height: 1,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
