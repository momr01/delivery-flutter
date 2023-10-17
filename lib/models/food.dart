import 'package:flutter/material.dart';

class Food {
  String imgurl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;

  Food(this.imgurl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.highLight = false});

  static List<Food> generateRecommendedFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'No1. in Sales',
          'Soba Soup',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': "assets/images/ingre3.png",
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a Japanese noodle soup, with a combination of a delicious flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
          highLight: true),
      Food(
        'assets/images/dish2.png',
        'Low Fat',
        'Sai Ua Samun Phrai',
        '50 min',
        4.8,
        '325 kcal',
        18,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': "assets/images/ingre3.png",
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a delicious flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
      ),
      Food(
        'assets/images/dish3.png',
        'Highly Recommended',
        'Ratatouille Pasta',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': "assets/images/ingre3.png",
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a delicious flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
      )
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        'assets/images/dish4.png',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': "assets/images/ingre3.png",
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a delicious flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
      )
    ];
  }
}
