import 'package:contacts_app/homepage.dart';
import 'package:contacts_app/widgets/socials_button.dart';
import 'package:flutter/material.dart';
import 'package:contacts_app/widgets/gradient_button.dart';
import 'package:contacts_app/widgets/login_field.dart';
import 'package:contacts_app/core/constants/constants.dart';
import 'package:contacts_app/features/auth/controller/auth_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class LoginScreen extends StatelessWidget {
  final bool isFromLogin;
  const LoginScreen({Key? key, this.isFromLogin = true}) : super(key: key);

 void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider).signInWithGoogle;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(Constants.logoPath),
              const Text(
                'Phonebook',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 50),
              const SocialButton(
                iconPath: Constants.googlePath,
                label: 'Continue with Google'
              ),
              const SizedBox(height: 20),
              const SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                label: 'Continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Email'),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Password'),
              const SizedBox(height: 20),
              const GradientButton(),
            ],
          ),
        ),
      ),

    );
  }
}