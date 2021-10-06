import 'package:flutter/material.dart';
import 'package:store/data/local_data/dummy_data.dart';
import 'package:store/presentation/core/screens/home_screen/componants/product_slider.dart';
import 'package:store/presentation/core/screens/home_screen/componants/slider.dart';

import 'home_title.dart';

class HomeScrollView extends StatelessWidget {
  const HomeScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const SliderWidget(),
        const SizedBox(
          height: 20,
        ),
        const HomeTitleWidget(),
        SizedBox(
            width: 120,
            height: 248,
            child: ProductSliderWidget(products: DummyData().products)),
        const HomeTitleWidget(
          title: "Best Selling",
        ),
        SizedBox(
          width: 120,
          height: 248,
          child: ProductSliderWidget(products: DummyData().products),
        ),
        const HomeTitleWidget(
          title: "Groceries",
        ),
        SizedBox(
          width: 120,
          height: 248,
          child: ProductSliderWidget(products: DummyData().products),
        ),
      ],
    );
  }
}
