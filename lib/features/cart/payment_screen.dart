import 'package:flutter/material.dart';
import 'package:rowbest/core/extensions/context_extension.dart';
import 'package:rowbest/core/stateless/custom_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          'الدفع',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(onTap: ()=>context.pop(), child: const Icon(Icons.arrow_back, color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Delivery Address
              const Text(
                'عنوان التسليم',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 0),
              Row(
                children: [
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      '285 حدائق الاهرام البوابة الثالثة الرماية الجيزة',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    children: [
                      const Icon(Icons.location_on, color: Colors.grey),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'تغيير',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),

              // Payment Method
              const Text(
                'طريقة الدفع',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  PaymentMethodButton(
                    label: 'فيزا',
                    isSelected: true,
                  ),
                  SizedBox(width: 8),
                  PaymentMethodButton(
                    label: 'كاش',
                    isSelected: false,
                  ),
                  SizedBox(width: 8),
                  PaymentMethodButton(
                    label: 'انستا باي',
                    isSelected: false,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'VISA **** **** **** 2512',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),

              // Order Summary
              const Text(
                'Order Summary',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const SummaryRow(
                label: 'اجمالي المبلغ المنتجات',
                value: '\$170.75',
              ),
              const SizedBox(height: 8),
              const SummaryRow(
                label: 'التوصيل',
                value: '\$20.00',
              ),
              const SizedBox(height: 8),
              const SummaryRow(
                label: 'الخصم',
                value: '\$10',
              ),
              const Divider(),
              const SizedBox(height: 8),
              const SummaryRow(
                label: 'اجمالي',
                value: 'ج 15000',
                isBold: true,
              ),
              const SizedBox(height: 16),

              // Promo Code
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.tag, color: Colors.grey),
                        hintText: 'أدخل الرمز الترويجي',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.purple,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('اضافة',style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
              const SizedBox(height: 60),

              // Pay Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'دفع',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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

class PaymentMethodButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const PaymentMethodButton({
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: isSelected ? Colors.blue : Colors.grey.shade200,
          // onPrimary: isSelected ? Colors.white : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  const SummaryRow({
    required this.label,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
