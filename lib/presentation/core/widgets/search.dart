import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: TextField(
        cursorHeight: 20,
        onChanged: (value) {},
        decoration: const InputDecoration(
          hintText: "Search Store",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xff7C7C7C),
            fontSize: 14,
          ),
          fillColor: Colors.grey,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusColor: Colors.grey,
        ),
      ),
    );
  }
}
