// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wfh_project/features/home/home_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.grey[300],
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Center(
          child: Text(
            'Product Details',
            style: TextStyle(fontSize: 18),
          ),
        ),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/lancer.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  width: 340,
                  height: 280,
                ),
              ),
              Gap(16),
              Text(
                'Innisfree Green Soften Balancing Cream',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Gap(4),
              Row(
                children: [
                  Text(
                    'From: \$108.00 ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$120.00',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              Gap(8),
              Row(
                children: [
                  Icon(Icons.star, color: Color.fromRGBO(255, 223, 161, 1)),
                  Icon(Icons.star, color: Color.fromRGBO(255, 223, 161, 1)),
                  Icon(Icons.star, color: Color.fromRGBO(255, 223, 161, 1)),
                  Icon(Icons.star, color: Color.fromRGBO(255, 223, 161, 1)),
                  Icon(Icons.star_half,
                      color: Color.fromRGBO(255, 223, 161, 1)),
                  Gap(4),
                  Text('4.7'),
                ],
              ),
              Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quantity:',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                          }
                        },
                      ),
                      Text(
                        quantity.toString().padLeft(2, '0'),
                        style: TextStyle(fontSize: 18),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Gap(16),
              Text(
                'Formulated with the essence of green tea, this cream offers a perfect balance, providing deep nourishment while...',
                style: TextStyle(fontSize: 16),
              ),
              Gap(16),
                                                                     SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.grey),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              child: Text('Cart'),
            ),
            Gap(8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
