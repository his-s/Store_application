import 'package:flutter/material.dart';
import 'package:store/presentation/componant/logo.dart';
import 'package:store/presentation/core/screens/home_screen/componants/home_scroll_view.dart';
import 'package:store/presentation/core/screens/home_screen/componants/location_banner.dart';
import 'package:store/presentation/core/widgets/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              LogoWidget(
                size: 18.0,
              ),
              LocationBannerWidget(
                locationName: "Dhaka, Banassre",
              ),
              SizedBox(
                height: 20,
              ),
              SearchWidget(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: HomeScrollView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
