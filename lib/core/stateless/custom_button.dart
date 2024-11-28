// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:rowbest/core/extensions/context_extension.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isOrange;
  final Color? color;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isOrange = true,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 58,
        width: context.screenWidth * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ??
              (isOrange ? const Color(0xfff6BC2F) : const Color(0xffFAE38D)),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
    );
  }
}
