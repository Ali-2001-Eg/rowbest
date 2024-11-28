import"package:flutter/material.dart";
import "package:rowbest/features/home/details_screen.dart";
class OffersGrid extends StatelessWidget {
  final bool isFav;
  // Sample Data
  final List<Map<String, dynamic>> products = [
    {
      'title': 'مروحة خارجية متنقله',
      'price': 55,
      'oldPrice': 90,
      'rating': 4.8,
      'reviews': 120,
      'image': 'assets/images/fan.png', // Replace with your image asset path
    },
    {
      'title': 'سماعة اسبيكر محمول',
      'price': 50,
      'oldPrice': 70,
      'rating': 4.8,
      'reviews': 120,
      'image': 'assets/images/speaker.png', // Replace with your image asset path
    },
    {
      'title': 'كامير للمنزل',
      'price': 300,
      'oldPrice': 700,
      'rating': 4.8,
      'reviews': 120,
      'image': 'assets/images/camera.png', // Replace with your image asset path
    },
    {
      'title': 'فستان خروج بنات',
      'price': 350,
      'oldPrice': 555,
      'rating': 4.8,
      'reviews': 120,
      'image': 'assets/images/dress.png', // Replace with your image asset path
    },
  ];

   OffersGrid({super.key, required this.isFav});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isFav ? double.infinity : 500,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            title: product['title'],
            price: product['price'],
            oldPrice: product['oldPrice'],
            rating: product['rating'],
            reviews: product['reviews'],
            image: product['image'], isFav: isFav,
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final num price;
  final num oldPrice;
  final num rating;
  final num reviews;
  final String image;
  final bool isFav;
  const ProductCard({super.key,
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.reviews,
    required this.image, required this.isFav,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>ProductDetailsScreen())),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Shadow color with opacity
              spreadRadius: 2, // Spread radius
              blurRadius: 5, // Blur radius
              offset: const Offset(0, 3), // Shadow position (x, y)
            ),
          ],
        ),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.asset(
                      image,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                   Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(
                      isFav ? Icons.favorite:Icons.favorite_border,
                      color: isFav ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
              // Title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              // Price and Old Price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      'ج $price',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'ج $oldPrice',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              // Rating and Reviews
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(
                      '$rating',
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '($reviews)',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}