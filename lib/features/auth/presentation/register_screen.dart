import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_errors.dart';
import 'package:nexo/nexo_ui.dart';

import '../domain/parameters/register_params.dart';
import '../domain/usecases/registration_usecases.dart';
import 'cubit/auth_cubit.dart';

/// Registration screen [UI-new] — `POST /auth/register/`.
///
/// Backend contract: `username` + `password` ×2 (+ optional name/phone/email).
/// NO role picker — the role is assigned by management. The 201 response is
/// a bare `User` without tokens, so a login with the same credentials
/// follows automatically and routes by the backend role.
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _username = TextEditingController();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _password2 = TextEditingController();

  bool _loading = false;

  @override
  void dispose() {
    _username.dispose();
    _firstName.dispose();
    _lastName.dispose();
    _phone.dispose();
    _email.dispose();
    _password.dispose();
    _password2.dispose();
    super.dispose();
  }

  Future<void> _handleRegister() async {
    final validationError = RegisterParams.validateAll(
      username: _username.text,
      password: _password.text,
      password2: _password2.text,
      phone: _phone.text,
      email: _email.text,
    );
    if (validationError != null) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(validationError)));
      return;
    }
    setState(() => _loading = true);
    try {
      final result = await GetIt.instance<RegisterUseCase>()(
        RegisterParams(
          username: _username.text.trim(),
          password: _password.text,
          password2: _password2.text,
          firstName: _firstName.text.trim().isEmpty
              ? null
              : _firstName.text.trim(),
          lastName: _lastName.text.trim().isEmpty
              ? null
              : _lastName.text.trim(),
          phone: _phone.text.trim().isEmpty ? null : _phone.text.trim(),
          email: _email.text.trim().isEmpty ? null : _email.text.trim(),
        ),
      );
      if (!mounted) return;
      switch (result) {
        case Left(:final failure):
          showFailureSnackBar(context, failure);
        case Right():
          // No tokens on register — log in with the same credentials.
          final role = await context.read<AuthCubit>().loginAndGetRole(
            username: _username.text.trim(),
            password: _password.text,
          );
          if (!mounted || role == null) return;
          context.go(AuthCubit.homeRouteForRole(role));
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, size: 30, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Регистрация',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: .w800,
            fontSize: 17,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: .symmetric(horizontal: 45, vertical: 16),
        child: Column(
          children: [
            _Field(controller: _username, hint: 'Логин *'),
            const Gap(12),
            _Field(controller: _firstName, hint: 'Имя'),
            const Gap(12),
            _Field(controller: _lastName, hint: 'Фамилия'),
            const Gap(12),
            _Field(
              controller: _phone,
              hint: 'Телефон',
              keyboardType: .phone,
            ),
            const Gap(12),
            _Field(
              controller: _email,
              hint: 'Email',
              keyboardType: .emailAddress,
            ),
            const Gap(12),
            _Field(controller: _password, hint: 'Пароль *', obscure: true),
            const Gap(12),
            _Field(
              controller: _password2,
              hint: 'Повторите пароль *',
              obscure: true,
              onSubmitted: (_) => _handleRegister(),
            ),
            const Gap(16),
            GestureDetector(
              onTap: _loading ? null : _handleRegister,
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: .circular(74),
                  color: _loading
                      ? const Color(0xFF2773BB).withValues(alpha: 0.6)
                      : const Color(0xFF2773BB),
                ),
                alignment: .center,
                child: _loading
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : Text(
                        'Создать',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Field extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onSubmitted;

  const _Field({
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.keyboardType,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: .circular(74),
        color: const Color(0xFFE9ECF0),
      ),
      width: double.infinity,
      height: 50,
      padding: .symmetric(horizontal: 17),
      alignment: .center,
      child: TextField(
        controller: controller,
        obscureText: obscure,
        keyboardType: keyboardType,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: const Color(0xFF7D8184),
          ),
        ),
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
