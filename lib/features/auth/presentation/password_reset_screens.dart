import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_errors.dart';
import 'package:nexo/nexo_ui.dart';

import '../domain/parameters/password_reset_params.dart';
import '../domain/usecases/registration_usecases.dart';

/// "Forgot password" screen [UI-new] — `POST /auth/password-reset/`.
///
/// Sends the reset link to the email; the link carries `uid` + `token`,
/// which the user pastes into `/reset-password` (there is no numeric code
/// on the backend — verified live).
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _email = TextEditingController();
  bool _loading = false;
  String? _sentMessage;

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  Future<void> _handleSend() async {
    final error = RequestPasswordResetParams.validateEmail(_email.text);
    if (error != null) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error)));
      return;
    }
    setState(() => _loading = true);
    try {
      final result = await GetIt.instance<RequestPasswordResetUseCase>()(
        RequestPasswordResetParams(email: _email.text.trim()),
      );
      if (!mounted) return;
      switch (result) {
        case Left(:final failure):
          showFailureSnackBar(context, failure);
        case Right(:final value):
          setState(() => _sentMessage = value);
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
          'Забыли пароль',
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
          crossAxisAlignment: .stretch,
          children: [
            Text(
              'Введите email — пришлём ссылку для сброса пароля.',
              style: GoogleFonts.poppins(fontSize: 15),
            ),
            const Gap(16),
            Container(
              decoration: BoxDecoration(
                borderRadius: .circular(74),
                color: const Color(0xFFE9ECF0),
              ),
              height: 50,
              padding: .symmetric(horizontal: 17),
              alignment: .center,
              child: TextField(
                controller: _email,
                keyboardType: .emailAddress,
                onSubmitted: (_) => _handleSend(),
                decoration: InputDecoration(
                  hintText: 'Email',
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
            ),
            const Gap(16),
            GestureDetector(
              onTap: _loading ? null : _handleSend,
              child: Container(
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
                        'Отправить',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            if (_sentMessage != null) ...[
              const Gap(16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F5E9),
                  borderRadius: .circular(14),
                ),
                child: Text(
                  _sentMessage!,
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              const Gap(12),
              TextButton(
                onPressed: () => context.push('/reset-password'),
                child: Text(
                  'Ввести данные из письма',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2773BB),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// New-password screen [UI-new] — `POST /auth/password-reset/confirm/`.
///
/// Fields are `uid` + `token` from the email link (pasted manually — no
/// deep-link handling in the app) plus the new password ×2.
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _uid = TextEditingController();
  final _token = TextEditingController();
  final _password = TextEditingController();
  final _password2 = TextEditingController();
  bool _loading = false;

  @override
  void dispose() {
    _uid.dispose();
    _token.dispose();
    _password.dispose();
    _password2.dispose();
    super.dispose();
  }

  Future<void> _handleConfirm() async {
    final error = ConfirmPasswordResetParams.validateAll(
      uid: _uid.text,
      token: _token.text,
      newPassword: _password.text,
      newPassword2: _password2.text,
    );
    if (error != null) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error)));
      return;
    }
    setState(() => _loading = true);
    try {
      final result = await GetIt.instance<ConfirmPasswordResetUseCase>()(
        ConfirmPasswordResetParams(
          uid: _uid.text.trim(),
          token: _token.text.trim(),
          newPassword: _password.text,
          newPassword2: _password2.text,
        ),
      );
      if (!mounted) return;
      switch (result) {
        case Left(:final failure):
          showFailureSnackBar(context, failure);
        case Right(:final value):
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(value)));
          context.go('/login');
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
          'Новый пароль',
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
          crossAxisAlignment: .stretch,
          children: [
            Text(
              'Вставьте uid и token из письма и придумайте новый пароль.',
              style: GoogleFonts.poppins(fontSize: 15),
            ),
            const Gap(16),
            _ResetField(controller: _uid, hint: 'uid из письма'),
            const Gap(12),
            _ResetField(controller: _token, hint: 'token из письма'),
            const Gap(12),
            _ResetField(
              controller: _password,
              hint: 'Новый пароль',
              obscure: true,
            ),
            const Gap(12),
            _ResetField(
              controller: _password2,
              hint: 'Повторите пароль',
              obscure: true,
              onSubmitted: (_) => _handleConfirm(),
            ),
            const Gap(16),
            GestureDetector(
              onTap: _loading ? null : _handleConfirm,
              child: Container(
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
                        'Сохранить',
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

class _ResetField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final ValueChanged<String>? onSubmitted;

  const _ResetField({
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: .circular(74),
        color: const Color(0xFFE9ECF0),
      ),
      height: 50,
      padding: .symmetric(horizontal: 17),
      alignment: .center,
      child: TextField(
        controller: controller,
        obscureText: obscure,
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
