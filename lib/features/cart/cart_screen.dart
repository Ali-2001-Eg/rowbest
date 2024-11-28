import 'package:flutter/material.dart';
import 'package:rowbest/core/stateless/custom_button.dart';
import 'package:rowbest/features/cart/payment_screen.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final List<Map<String, dynamic>> cartItems = [
    {
      'title': 'سماعة بلوتوث',
      'price': 5200,
      'color': 'اسود',
      'quantity': 1,
      'image': 'assets/images/speaker.png', // Replace with your image path
    },
    {
      'title': 'فستان سهر',
      'price': 500,
      'size': 'XL',
      'quantity': 2,
      'image': 'assets/images/dress.png', // Replace with your image path
    },
    {
      'title': 'كاميرا',
      'price': 350,
      'size': 'XL',
      'quantity': 1,
      'image': 'assets/images/camera.png', // Replace with your image path
    },
    {
      'title': 'مروحه',
      'price': 350,
      'size': 'XL',
      'quantity': 1,
      'image': 'assets/images/fan.png', // Replace with your image path
    },
    {
      'title': 'العرض الاول',
      'price': 350,
      'size': 'XL',
      'quantity': 1,
      'image': 'assets/images/banner.png', // Replace with your image path
    },
    {
      'title': 'حقيبه',
      'price': 350,
      'size': 'XL',
      'quantity': 1,
      'image': 'assets/images/video.png', // Replace with your image path
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'السله',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        // leading: const Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return CartItem(
                  title: item['title'],
                  price: item['price'],
                  quantity: item['quantity'],
                  size: item['size'],
                  color: item['color'],
                  image: item['image'],
                );
              },
            ),
          ),
          const CartSummary(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  final String title;
  final int price;
  int quantity;
  final String? size;
  final String? color;
  final String image;

  CartItem({
    super.key,
    required this.title,
    required this.price,
    required this.quantity,
    this.size,
    this.color,
    required this.image,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              widget.image,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (widget.color != null)
                  Text(
                    'لون : ${widget.color}',
                    style: const TextStyle(color: Colors.grey),
                  ),
                if (widget.size != null)
                  Text(
                    'المقاس : ${widget.size}',
                    style: const TextStyle(color: Colors.grey),
                  ),
                Text(
                  'ج ${widget.price}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.add, color: Colors.grey),
                onPressed: () {
                  setState(() {
                    widget.quantity++;
                  });
                },
              ),
              Text(
                '${widget.quantity}',
                style: const TextStyle(fontSize: 16),
              ),
              IconButton(
                icon: const Icon(Icons.remove, color: Colors.grey),
                onPressed: () {
                  setState(() {
                    if (widget.quantity == 1) {
                      return;
                    }
                    widget.quantity--;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('اجمالي المبلغ المنتجات',
                  style: TextStyle(color: Colors.grey)),
              Text('ج 15000'),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('التوصيل', style: TextStyle(color: Colors.grey)),
              Text('ج 50'),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('خصم', style: TextStyle(color: Colors.grey)),
              Text('ج 00'),
            ],
          ),
          const Divider(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('اجمالي',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('\$180.99',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 16),
          CustomButton(
              text: 'انتقال الى الدفع',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentScreen()));
              }),
        ],
      ),
    );
  }
}
