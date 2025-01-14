import 'package:flutter/material.dart';
import 'package:rowbest/features/cart/cart_screen.dart';
import 'package:rowbest/features/home/home_layout.dart';
import 'package:rowbest/features/profile/profile_screen.dart';
import 'package:rowbest/features/saved/saved_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController =
      PageController(); // To control page navigation
  int _currentIndex = 0; // To track selected index

  // List of page widgets
  final List<Widget> _pages = [
    const HomeLayout(),
    const SavedScreen(),
     CartScreen(),
    const ProfileScreen()
  ];

  // Function to handle item selection
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index); // Navigate to the selected page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index; // Sync the current index
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 'الرئيسيه', 0),
            _buildNavItem(Icons.favorite_border, 'المحفوظات', 1),
            _buildNavItem(Icons.shopping_cart_outlined, 'السله', 2),
            _buildNavItem(Icons.person_outline, 'حسابي', 3),
          ],
        ),
      ),
    );
  }

  // Helper widget to build navigation items
  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.orange : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.orange : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
