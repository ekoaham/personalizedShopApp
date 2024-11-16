import 'package:flutter/material.dart';
import 'package:personalized_shop_app/widgets/customWidget.dart';
import '../models/catalouge.dart';

class MainShoppingScreen extends StatelessWidget {
  // const MainShoppingScreen({super.key});
  // status
  final List<Product> availProduct = [
    Product(
        id: 1001,
        title: 'Book 1',
        image: 'assets/images/picture1.jpeg',
        price: 199),
    Product(
        id: 1001,
        title: 'Book 2',
        image: 'assets/images/picture2.jpeg',
        price: 299),
    Product(
        id: 1001,
        title: 'Book 3',
        image: 'assets/images/picture3.jpeg',
        price: 399),
    Product(
        id: 1001,
        title: 'Book 4',
        image: 'assets/images/picture4.jpeg',
        price: 199),
    Product(
        id: 1001,
        title: 'Book 5',
        image: 'assets/images/picture5.jpeg',
        price: 189),
    Product(
        id: 1001,
        title: 'Book 6',
        image: 'assets/images/picture6.jpeg',
        price: 179),
    Product(
        id: 1001,
        title: 'Book 7',
        image: 'assets/images/picture7.jpeg',
        price: 1099),
    Product(
        id: 1001,
        title: 'Book 8',
        image: 'assets/images/picture8.jpeg',
        price: 1399),
    Product(
        id: 1001,
        title: 'Book 9',
        image: 'assets/images/picture9.jpeg',
        price: 1299),
    Product(
        id: 1001,
        title: 'Book 10',
        image: 'assets/images/pictures10.jpeg',
        price: 1899),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GridView.builder(
          itemCount: availProduct.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return GridProductItem(
                availProduct[index].id.toString(),
                availProduct[index].title,
                availProduct[index].image
            );
          }),
    ));
  }
}
