import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rowbest/core/extensions/context_extension.dart';

class CustomAdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF8F8F8),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Slightly transparent shadow
              blurRadius: 8, // Soft shadow edges
              offset: const Offset(0, 4), // Shadow slightly below the card
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
          child: Row(
            children: [
              // Text content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Main question text
                    Text(
                      'هل تريد الاعلان معنا',
                      style: context.textTheme.bodyLarge!
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(height: 8),
                    // Subtitle with a link
                    RichText(
                      text: TextSpan(
                        text: 'عند منتج مصنع تريد أن تبيعه من خلالنا \t',
                        style: context.textTheme.bodyLarge!
                            .copyWith(fontWeight: FontWeight.normal),
                        children: [
                          TextSpan(
                            text: 'سجل معنا كتاجر',
                            style: context.textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.blue,
                            ),
                            // Add a tap gesture for the link
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Add your action for the link here
                                print("Navigate to the registration screen");
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: IconButton(
                  onPressed: () {
                    // Add your back button action here
                  },
                  icon: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
