import 'package:flutter/material.dart';
import 'package:rowbest/core/extensions/context_extension.dart';
import 'package:svg_flutter/svg_flutter.dart';


class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFBFBFC),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Shadow color with opacity
              blurRadius: 8, // How much the shadow blurs
              offset: const Offset(0, 4), // Offset in the x and y directions
            ),
          ],
        ),
        child: TextField(
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            hintText: 'ابحث عن العناصر المفضلة لديك',
            hintStyle:
            context.textTheme.bodyLarge!.copyWith(color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(vertical: 25),
            filled: true,
            fillColor: Colors.transparent, // Set to transparent to inherit Container color
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/svg/search-visual.svg', // Replace with your prefix icon path
                width: 24,
                height: 24,
              ),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/svg/search.svg', // Replace with your suffix icon path
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
