import 'package:flutter/material.dart';

class AgreeCheckbox extends StatefulWidget {
  final String text; // Customizable text for the checkbox
  final ValueChanged<bool> onChanged; // Callback for state changes
  final bool initialValue; // Initial checkbox state

  const AgreeCheckbox({
    Key? key,
    required this.text,
    required this.onChanged,
    this.initialValue = false,
  }) : super(key: key);

  @override
  _AgreeCheckboxState createState() => _AgreeCheckboxState();
}

class _AgreeCheckboxState extends State<AgreeCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue; // Initialize with the provided value
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, // Align content to the right
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
              widget.onChanged(isChecked); // Notify the parent widget
            });
          },
          activeColor: Colors.white, // Color when checked
          checkColor: Colors.black, // Checkmark color
          side: const BorderSide(color: Colors.white), // Border color
        ),
        const SizedBox(width: 8), // Space between text and checkbox

        Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white, // Text color
            fontSize: 16, // Font size
          ),
        ),
      ],
    );
  }
}
