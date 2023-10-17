import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/detail/detail.dart';
import 'package:food_delivery_app/screens/home/widget/food_item.dart';

class FoodListView extends StatelessWidget {
  final int? selected;
  final Function? callbak;
  final PageController? pageController;
  final Restaurant? restaurant;

  const FoodListView(
      {super.key,
      this.selected,
      this.callbak,
      this.pageController,
      this.restaurant});

  @override
  Widget build(BuildContext context) {
    final category = restaurant?.menu.keys.toList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callbak!(index),
        children: category!
            .map((e) => ListView.separated(
                  padding:
                      EdgeInsets.zero, //the list is up, and not in the middle
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(
                              food: restaurant!
                                  .menu[category[selected!]]![index])));
                    },
                    child: FoodItem(
                        food: restaurant!.menu[category[selected!]]![index]),
                  ),
                  separatorBuilder: (_, index) => const SizedBox(
                    height: 15,
                  ),
                  itemCount: restaurant!.menu[category[selected!]]!.length,
                ))
            .toList(),
      ),
    );
  }
}
