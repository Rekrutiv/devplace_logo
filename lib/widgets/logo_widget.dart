import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
    required this.searchList,
  }) : super(key: key);

  final List<String> searchList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            // margin: EdgeInsets.all(30),
            constraints: BoxConstraints(
                    minHeight: 300.h,
                    maxHeight: searchList.length > 12
                        ? 300.h
                        : (MediaQuery.of(context).size.height -
                            (searchList.length - 1) / 2.toInt() * 90)) /
                2,
            width: double.infinity,
            child: Center(child: Image.asset('assets/icons_png/logo.png'))),
      ],
    );
  }
}
