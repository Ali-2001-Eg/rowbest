import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align label to the right
      children: [
        
        const SizedBox(height: 15), // Space between label and text field
        TextFormField(
          controller: controller, // Use the provided controller
          textDirection: TextDirection.rtl, // Right-to-left text direction
          decoration: InputDecoration(
            hintText: hintText, // Placeholder text
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
            filled: true,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Rounded edges
              borderSide: const BorderSide(
                color: Colors.grey, // Border color
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.grey, // Border color when not focused
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.white, // Border color when focused
              ),
            ),
          ),
          style: const TextStyle(color: Colors.white), // Text color
        ),
      ],
    );
  }
}
