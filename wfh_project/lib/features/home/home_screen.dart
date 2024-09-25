// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wfh_project/features/home/widgets/product_card_screen.dart';
import 'package:wfh_project/features/product/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'assets/images/lancer.png',
            width: 40,
            height: 40,
          ),
        ),
        title: Text(
          'Soko',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProductScreen()));
            },
            icon: Icon(Icons.search_outlined, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner_outlined, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pr.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gap(16),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  ProdCategory(
                    label: 'Beauty',
                    image: 'assets/images/serum.png',
                  ),
                  ProdCategory(
                    label: 'Makeup',
                    image: 'assets/images/make.png',
                  ),
                  ProdCategory(
                    label: 'Haircare',
                    image: 'assets/images/hair.png',
                  ),
                  ProdCategory(
                    label: 'Organic',
                    image: 'assets/images/org.png',
                  ),
                ],
              ),
              Gap(24),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(218, 191, 52, 1),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/serum.png'),
                    alignment: Alignment.centerRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ER-G\nCream offers a \nperfect balance',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Recommended',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ProductCard(
                      title: 'Beauty Nature Radiance',
                      price: '\$108',
                      imagePath: 'assets/images/lancer.png',
                    ),
                    ProductCard(
                      title: 'Water Sleeping Hydrant',
                      price: '\$98',
                      imagePath: 'assets/images/water.png',
                    ),
                  ],
                ),
              ),
              Gap(120),
            ],
          ),
        ),
      ),
    );
  }
}

class ProdCategory extends StatelessWidget {
  final String label;
  final String image;

  const ProdCategory({required this.label, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 100,
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
