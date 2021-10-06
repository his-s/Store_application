import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    Key? key,
    this.images = const [
      "https://www.goodfruitandvegetables.com.au/images/transform/v1/crop/frm/F96xjWybVc3FcQiiSwA3u6/04b088bc-0470-45f3-99e9-f5ff6e28d6e1.jpg/r0_236_4608_2837_w1200_h678_fmax.jpg",
      "https://1.bp.blogspot.com/-_ov3zt9HoaQ/YV1bZd9k0zI/AAAAAAAABCw/RVD3zB5DKjwLzkDyAjJ8jeTIp3W_ZGzLACLcBGAsYHQ/s320/1.png",
    ],
  }) : super(key: key);
  final List<String> images;

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CarouselSlider.builder(
            itemCount: widget.images.length,
            itemBuilder: (context, index, gt) {
              return imageBuilder(widget.images[index]);
            },
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() => active = index);
              },
              autoPlay: true,
              viewportFraction: 1,
              height: 114,
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          child: dotIndicator(),
        ),
      ],
    );
  }

  Widget imageBuilder(String imageUrl) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }

  Widget dotIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: active,
      count: widget.images.length,
      effect: const ExpandingDotsEffect(
        dotHeight: 6,
        dotWidth: 6,
        activeDotColor: Colors.green,
        dotColor: Colors.grey,
      ),
    );
  }
}
