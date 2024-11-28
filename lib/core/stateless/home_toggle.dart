import 'package:flutter/material.dart';

class CustomToggle extends StatefulWidget {
  const CustomToggle({super.key});

  @override
  _CustomToggleState createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // First Option (إيجار)
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => _selectedIndex = 0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                color: _selectedIndex == 0 ? Colors.blue[50] : Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'إيجار',
                  style: TextStyle(
                    color: _selectedIndex == 0 ? Colors.blue : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),

        // Second Option (شراء)
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => _selectedIndex = 1),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: _selectedIndex == 1 ? Colors.blue[50] : Colors.white,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Center(
                child: Text(
                  'شراء',
                  style: TextStyle(
                    color: _selectedIndex == 1 ? Colors.blue : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        // Third Option (بيع)
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => _selectedIndex = 2),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                color: _selectedIndex == 2 ? Colors.blue[50] : Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'بيع',
                  style: TextStyle(
                    color: _selectedIndex == 2 ? Colors.blue : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
