import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rowbest/core/extensions/context_extension.dart';
import 'package:rowbest/core/stateless/custom_button.dart';
import 'package:rowbest/features/auth/register_screen.dart';
import 'package:rowbest/features/home/home_screen.dart';
import 'package:svg_flutter/svg_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2C2C),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'سجل دخول',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
            child: Container(
              width: double.infinity,
              height: 90,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  )),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      ' تسجيل دخول بواسطه',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset('assets/svg/google icon.svg'),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
            child: Container(
              width: double.infinity,
              height: 90,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  )),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      ' تسجيل دخول بواسطه',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset('assets/svg/apple icon.svg'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.screenHeight * 0.03,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey.shade400, // Adjust color as needed
                  thickness: 1, // Adjust thickness as needed
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: const Text(
                  'أو',
                  style: TextStyle(
                    fontSize: 20, // Adjust font size as needed
                    color: Colors.grey, // Adjust color as needed
                    fontWeight: FontWeight.w500, // Adjust weight as needed
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey.shade400, // Adjust color as needed
                  thickness: 1, // Adjust thickness as needed
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.screenHeight * 0.05,
          ),
          Center(
            child: CustomButton(
              text: 'تسجيل الدخول بالايميل',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()));
              },
              isOrange: false,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'ليس لديك حساب حتي الان؟\t ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'قم بالتسجيل',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle the tap event
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const RegisterScreen()));
                          // You can navigate to another screen or perform any action here
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
