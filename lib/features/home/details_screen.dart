import 'package:flutter/material.dart';
import 'package:rowbest/core/stateless/custom_button.dart';
import 'package:rowbest/features/cart/cart_screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تفاصيل المنتج', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/speaker.png'), // Replace with your image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Image Selector Carousel
            SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Number of images
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/speaker.png'), // Replace with your image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // Product Title and Price
            const Text(
              'Echo Dot (الجيل الخامس، إصدار 2022) بصوت أكثر حيوية',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),
                const SizedBox(width: 4),
                const Text(
                  '4.5 (40 Review)',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const Spacer(),
                Text(
                  'ج 500',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Description Section
            const Text(
              'تفصيل اكثر',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'استمتع بتجربة صوتية محسنة مقارنة بأي جهاز Echo Dot سابق من Alexa للحصول على صوت أكثر وضوحاً وصوت أعمق...',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            const SizedBox(height: 16),

            // Color Selection
            const Text(
              'اختر اللون: أسود',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: List.generate(
                4,
                    (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: GestureDetector(
                    onTap: () {
                      // Handle color selection
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: [Colors.red, Colors.blue, Colors.purple, Colors.black][index],
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 2),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 80),

            // Add to Cart Button
            Center(child: CustomButton(text: 'اضف الى السله', onTap: ()=>CartScreen()))
          ],
        ),
      ),
    );
  }
}
