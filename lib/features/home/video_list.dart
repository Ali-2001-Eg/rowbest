import 'package:flutter/material.dart';

class VideoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'فيديوهات المنتجات',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Horizontal List
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5, // Replace with your item count
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 150,
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Stack(
                      children: [
                        // Background Image
                        Positioned.fill(
                          child: Image.asset(
                            'assets/images/video.png', // Replace with your asset path
                            fit: BoxFit.cover, // Ensures the image fills the container
                            height: 500,
                          ),
                        ),
                        // Play Icon Overlay
                        const Center(
                          child: Icon(
                            Icons.play_circle,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
