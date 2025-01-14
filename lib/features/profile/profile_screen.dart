import 'package:flutter/material.dart';
import 'package:rowbest/core/stateless/custom_button.dart';
import 'package:rowbest/features/landing/landing_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'حسابي',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Profile Info
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Profile Image
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/images/avatar.png'), // Replace with your image
                ),
                SizedBox(width: 16),
                // User Info
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'اسم المستخدم', // User Name
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'user@example.com', // Email Address
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),

          // Change Language
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('تغيير اللغة'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle change language
            },
          ),
          const Divider(),

          // Change Theme
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text('تغيير السمة'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle theme change
            },
          ),
          const Divider(),

          // Other Options
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('معلومات عن التطبيق'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle app info navigation
            },
          ),
          const Divider(),
          const Spacer(),
          Center(
            child: CustomButton(
                text: 'تسجيل الخروج',
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const LandingPage()),
                      (r) => false);
                },
                color: Colors.orange),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
