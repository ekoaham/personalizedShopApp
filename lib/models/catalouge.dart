import 'dart:ffi';

import 'package:flutter/material.dart';


class Product{
  late final int id;
  late final String title;
  late final String image;
  late final double price;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    this.isFavorite = false,
  });
}