import 'package:flutter/material.dart';
import 'package:shoes_animation_flutter/model/shoes.dart';

final listCategory = ['Basketball', 'Running', 'Traning'];

final listShoes = [
  Shoes(
    name: 'AIR JORDAN 1 MID SE GC',
    category: 'NIKE AIR',
    price: '\$120.00',
    punctuation: 2,
    listImage: [
      ImageShoes(
        image: 'assets/shoe_images/J_001.png',
        color: const Color(0xffEAA906), star: 4,
      ),
      ImageShoes(
        image: 'assets/shoe_images/J_002.png',
        color: const Color(0xff08B894), star: 3,
      ),
      ImageShoes(
        image: 'assets/shoe_images/J_003.png',
        color: const Color(0xffB50D0D), star: 2,
      ),
      ImageShoes(
        image: 'assets/shoe_images/J_004.png',
        color: const Color(0xff229954), star: 4,
      ),
    ],
  ),
  Shoes(
    name: 'NIKE BLAZER MID',
    category: 'NIKE AIR',
    price: '\$120.00',
    punctuation: 5,
    listImage: [
      ImageShoes(
        image: 'assets/shoe_images/Z_001.png',
        color: const Color(0xff08B894), star: 5,
      ),
      ImageShoes(
        image: 'assets/shoe_images/Z_002.png',
        color: const Color(0xff01876E), star: 3,
      ),
      ImageShoes(
        image: 'assets/shoe_images/Z_003.png',
        color: const Color(0xff189E02), star: 4,
      ),
      ImageShoes(
        image: 'assets/shoe_images/Z_004.png',
        color: const Color(0xffF76A02), star: 4,
      ),
    ],
  ),
  Shoes(
    name: 'ZoomX Vaporfly',
    category: 'NIKE ZOOM',
    price: '\$180.00',
    punctuation: 3,
    listImage: [
      ImageShoes(
        image: 'assets/shoe_images/N_001.png',
        color: const Color(0xff5C5A31), star: 3,
      ),
      ImageShoes(
        image: 'assets/shoe_images/N_002.png',
        color: const Color(0xff2C2C46), star: 2,
      ),
      ImageShoes(
        image: 'assets/shoe_images/N_003.png',
        color: const Color(0xff5B5930), star: 2,
      ),
      ImageShoes(
        image: 'assets/shoe_images/N_004.png',
        color: const Color(0xff5C9462), star: 1,
      ),
    ],
  ),
];
