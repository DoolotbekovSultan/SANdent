import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/auth/domain/entities/auth_entity.dart';
import 'package:san_dent/features/auth/domain/parameters/login_params.dart';
import 'package:san_dent/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:san_dent/shared/widgets/logo_widget.dart';

/// Login screen (visual design kept, logic rewired to [AuthCubit]).
///
/// Backend contract: `username` + `password` only — no role picker.
/// The role comes from `GET /me/` after login and decides the home route.
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    final validationError = LoginParams.validateAll(
      username: _usernameController.text,
      password: _passwordController.text,
    );
    if (validationError != null) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(validationError)));
      return;
    }

    final role = await context.read<AuthCubit>().loginAndGetRole(
      username: _usernameController.text.trim(),
      password: _passwordController.text,
    );
    if (!mounted || role == null) return;
    context.go(AuthCubit.homeRouteForRole(role));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, NexoAsyncState<AuthEntity>>(
        listener: (context, state) {
          final failure = state.failureOrNull;
          if (failure != null) showFailureSnackBar(context, failure);
        },
        builder: (context, state) {
          final isLoading = state.isLoading;
          return Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/waves.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoWidget(),
                    Gap(23),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(74),
                        color: const Color(0xFFE9ECF0),
                      ),
                      width: double.infinity,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/login.svg'),
                          Gap(5),
                          Expanded(
                            child: TextField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                hintText: 'Логин',
                                border: InputBorder.none,
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 6 / 100 * 22,
                                  fontSize: 22,
                                  color: const Color(0xFF7D8184),
                                ),
                              ),
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(16),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(74),
                        color: const Color(0xFFE9ECF0),
                      ),
                      width: double.infinity,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/password.svg'),
                          Gap(5),
                          Expanded(
                            child: TextField(
                              controller: _passwordController,
                              obscureText: true,
                              onSubmitted: (_) => _handleLogin(),
                              decoration: InputDecoration(
                                hintText: 'Пароль',
                                border: InputBorder.none,
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 6 / 100 * 22,
                                  fontSize: 22,
                                  color: const Color(0xFF7D8184),
                                ),
                              ),
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(16),
                    GestureDetector(
                      onTap: isLoading ? null : _handleLogin,
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(74),
                          color: isLoading
                              ? const Color(
                                  0xFF2773BB,
                                ).withValues(alpha: 0.6)
                              : const Color(0xFF2773BB),
                        ),
                        alignment: Alignment.center,
                        child: isLoading
                            ? const SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              )
                            : Text(
                                'Войти',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  letterSpacing: 6 / 100 * 22,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                    Gap(12),
                    TextButton(
                      onPressed: isLoading
                          ? null
                          : () => context.push('/forgot-password'),
                      child: Text(
                        'Забыли пароль?',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: const Color(0xFF2773BB),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: isLoading
                          ? null
                          : () => context.push('/register'),
                      child: Text(
                        'Регистрация',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: const Color(0xFF2773BB),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
