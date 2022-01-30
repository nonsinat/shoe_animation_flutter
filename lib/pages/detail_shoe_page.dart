// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:shoes_animation_flutter/model/shoes.dart';
import 'package:shoes_animation_flutter/widgets/custom_button.dart';
import 'package:shoes_animation_flutter/widgets/shake_transition.dart';

class DetailShoeScreen extends StatefulWidget {
  const DetailShoeScreen({
    Key? key,
    required this.shoes,
  }) : super(key: key);
  final Shoes shoes;
  @override
  State<DetailShoeScreen> createState() => _DetailShoeScreenState();
}

class _DetailShoeScreenState extends State<DetailShoeScreen> {
  int valueIndexColor = 0;
  int valueIndexSize = 1;
  int valueIndexStar = 0;

  double sizeShoes(int index, Size size) {
    switch (index) {
      case 0:
        return (size.height * 0.09);
      case 1:
        return (size.height * 0.07);
      case 2:
        return (size.height * .05);
      case 3:
        return (size.height * .04);
      default:
        return (size.height * .05);
    }
  }

  int starShoes(int index) {
    switch (index) {
      case 0:
        return valueIndexStar = 4;
      case 1:
        return valueIndexStar = 5;
      case 2:
        return valueIndexStar = 3;
      default:
        return valueIndexStar = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -size.height * .15,
            right: -size.height * .20,
            child: TweenAnimationBuilder<double>(
                duration: Duration(milliseconds: 250),
                tween: Tween(begin: 0, end: 1),
                builder: (context, value, _) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    height: value * (size.height * .5),
                    width: value * (size.height * .5),
                    decoration: BoxDecoration(
                      color: widget.shoes.listImage![valueIndexColor].color,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
          ),
          Positioned(
            top: kToolbarHeight,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_rounded,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: size.height * .2,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: FittedBox(
                child: Text(
                  widget.shoes.category.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[100],
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 400),
            top: size.height * .22,
            right: sizeShoes(valueIndexSize, size),
            left: sizeShoes(valueIndexSize, size),
            child: Hero(
              tag: widget.shoes.name.toString(),
              child: Image(
                image: AssetImage(
                  widget.shoes.listImage![valueIndexColor].image.toString(),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * .6,
            left: 16,
            right: 16,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ShakeTransition(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.shoes.category.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.shoes.name.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ShakeTransition(
                      left: false,
                      child: Text(
                        widget.shoes.price.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                ShakeTransition(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: List.generate(
                          widget.shoes.listImage![valueIndexStar].star,
                          (index) => Icon(
                            Icons.star,
                            color: widget.shoes.punctuation! > index
                                ? widget.shoes.listImage![valueIndexColor].color
                                : Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'SIZE',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: List.generate(
                          4,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomButton(
                              onTap: () {
                                valueIndexSize = index;
                                setState(() {});
                              },
                              color: index == valueIndexSize
                                  ? widget
                                      .shoes.listImage![valueIndexColor].color
                                  : Colors.white,
                              child: Text(
                                "${index + 7}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  color: index == valueIndexSize
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height * .84,
            left: 16,
            right: 16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShakeTransition(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COLOR',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: List.generate(
                          widget.shoes.listImage!.length,
                          (index) => GestureDetector(
                            onTap: () {
                              valueIndexColor = index;
                              valueIndexStar = index;
                              print(valueIndexStar);
                              setState(() {});
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 8.0),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: widget.shoes.listImage![index].color,
                                shape: BoxShape.circle,
                                border: index == valueIndexColor
                                    ? Border.all(color: Colors.white, width: 2)
                                    : null,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ShakeTransition(
                  left: false,
                  child: CustomButton(
                    onTap: () {},
                    width: 100,
                    color: widget.shoes.listImage![valueIndexColor].color,
                    child: Text(
                      'BUY',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
