import 'package:flutter/material.dart';

class LocationBannerWidget extends StatelessWidget {
  const LocationBannerWidget({Key? key, this.locationName = "Unknown"})
      : super(key: key);
  final String locationName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.location_on,
          color: Color(0xff4C4F4D),
          size: 25,
        ),
        Text(
          locationName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xff4C4F4D),
          ),
        ),
      ],
    );
  }
}
