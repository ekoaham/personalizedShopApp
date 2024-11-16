import 'package:flutter/material.dart';

class GridProductItem extends StatelessWidget {
  const GridProductItem(@required this.id, @required this.title, @required this.image, {super.key});

  final String id,title,image;
  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Image.asset(image)
    );
  }
}
