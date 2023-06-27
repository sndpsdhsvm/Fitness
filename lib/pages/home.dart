import 'package:fitness/const/icons_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Breakfast',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            AppIcons.leftArrow,
            height: 20,
            width: 20,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              debugPrint('tapped');
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 37,
              decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                AppIcons.dots,
                height: 20,
                width: 20,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset(
                  AppIcons.search,
                  width: 20,
                ),
              ),
              border: const OutlineInputBorder()),
        ),
      ),
    );
  }
}
