import 'package:flutter/material.dart';
import 'package:rowbest/core/stateless/agree_condition.dart';
import 'package:rowbest/core/stateless/custom_button.dart';
import 'package:rowbest/core/stateless/custom_text_field.dart';

import '../home/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff2C2C2C),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'التسجيل بالبريد الالكتروني',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'الاسم',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              CustomTextFormField(
                  controller: _nameController, hintText: 'اكتب اسمك بالكامل'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'الايميل',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              CustomTextFormField(
                  controller: _emailController, hintText: 'اكتب ايميلك'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'رقم الهاتف',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              CustomTextFormField(
                  controller: _phoneController, hintText: 'اكتب رقمك الخاص'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'كلمه المرور',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              CustomTextFormField(
                  controller: _passwordController,
                  hintText: ' اكتب كلمه المرور الخاصه بك'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'تأكيد كلمه المرور',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              CustomTextFormField(
                  controller: _confirmPasswordController,
                  hintText: 'تأكيد كلمه المرور الخاصه بك'),
              const SizedBox(
                height: 20,
              ),
              AgreeCheckbox(
                text: 'الموافقة على الشروط والأحكام',
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CustomButton(
                  text: 'تسجيل',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()));
                  },
                  isOrange: false,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
