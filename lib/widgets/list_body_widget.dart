import 'package:devplace_logo/widgets/grid_item_widget.dart';
import 'package:devplace_logo/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListBodyWidget extends StatelessWidget {
  const ListBodyWidget({
    Key? key,
    required this.searchList,
  }) : super(key: key);

  final List<String> searchList;

  @override
  Widget build(BuildContext context) {
    return searchList.length > 12
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              LogoWidget(searchList: searchList),
              Container(
                child: GridItem(searchList: searchList),
              )
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                  child: Center(child: LogoWidget(searchList: searchList))),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    constraints:
                         BoxConstraints(minHeight: 100.h, maxHeight: 720.h),
                    child: Flexible(
                      fit: FlexFit.tight,
                      child: GridItem(searchList: searchList),
                    ),
                  ),
                ],
              ),
            ],
          );
  }
}
