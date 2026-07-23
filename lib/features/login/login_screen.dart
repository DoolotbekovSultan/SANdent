import 'package:flutter/material.dart';
import 'package:san_dent/shared/widgets/logo_widget.dart';

// TODO: start from this place deweloping

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         const Text('Login Screen'),
    //         ElevatedButton(
    //           onPressed: () {
    //             // Navigate to the home screen after login
    //             Navigator.pushReplacementNamed(context, '/home');
    //           },
    //           child: const Text('Login'),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/images/waves.png'),
          ),
          Column(mainAxisAlignment: .center, children: [LogoWidget()]),
        ],
      ),
    );
  }
}
