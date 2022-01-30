import 'package:flutter/material.dart';

class ImageShoes {
  final String image;
  final Color color;
  final int star;
  ImageShoes({
    required this.star,
    required this.image,
    required this.color,
  });
}

class Shoes {
  final String? name;
  final String? category;
  final String? price;
  final int? punctuation;
  final List<ImageShoes>? listImage;
  Shoes({
    this.name,
    this.category,
    this.price,
    this.punctuation,
    this.listImage,
  });
}
