import 'package:fitness/const/icons_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 0, 40),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                )
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    AppIcons.search,
                    width: 20,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 20,
                        child: VerticalDivider(
                          thickness: 0.1,
                          indent: 0,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                      ),
                      SvgPicture.asset(
                        AppIcons.filter,
                        width: 20,
                      ),
                    ],
                  ),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
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
    );
  }
}
