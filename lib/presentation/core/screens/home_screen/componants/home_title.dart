import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({Key? key, this.title = "Exclusive Offer"})
      : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(2),
      leading: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: const Text(
          "See all",
          style: TextStyle(
            color: Color(0xff53B175),
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
