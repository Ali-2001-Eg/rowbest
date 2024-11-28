import 'package:flutter/material.dart';
import 'package:rowbest/core/extensions/context_extension.dart';
import 'package:rowbest/core/stateless/custom_button.dart';
import 'package:rowbest/features/auth/login_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2C2C),
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/landing.png'),
          SizedBox(
            height: context.screenHeight * 0.05,
          ),
          const Text(
            'مرحبا',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: context.screenHeight * 0.04,
          ),
          const Text(
            'سجل , اشتري , بيع , أجر , كل ده في ابليكيشن واحد',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
              text: "تسجيل دخول للعميل",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
              }),
          const SizedBox(height: 30),
          CustomButton(
              text: "تسجيل الدخول كـ  تاجر",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
              })
        ],
      ),
    );
  }
}
