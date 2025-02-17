import 'package:flutter/material.dart';

class ProductCategories extends StatelessWidget {
  final List<CategoryItem> categories = [
    CategoryItem(icon: Icons.home, label: 'عقارات'),
    CategoryItem(icon: Icons.checkroom, label: 'موضة'),
    CategoryItem(icon: Icons.chair, label: 'أثاث'),
    CategoryItem(icon: Icons.sports_esports, label: 'ألعاب'),
    CategoryItem(icon: Icons.fitness_center, label: 'لياقة بدنية'),
    CategoryItem(icon: Icons.directions_car, label: 'سيارات'),
  ];

   ProductCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'التصنيفات',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              GestureDetector(
                onTap: () {
                  // Add your action for "عرض الكل" here
                  print("View all categories");
                },
                child: Text(
                  'عرض الكل',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.blue),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Horizontal ListView
          SizedBox(
            height: 150, // Height for the ListView
            child: MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              removeTop: true,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 8),
                    child: Column(
                      children: [
                        // Icon with background
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xffEBEFFF), // Background color
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Icon(
                            category.icon,
                            size: 30,
                            color: const Color(0xff323135),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Label
                        Text(
                          category.label,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem {
  final IconData icon;
  final String label;

  CategoryItem({required this.icon, required this.label});
}
