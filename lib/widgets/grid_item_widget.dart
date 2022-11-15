import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.searchList,
  }) : super(key: key);

  final List<String> searchList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding:  EdgeInsets.all(6.w),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: searchList.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 7.w,
          mainAxisSpacing: 7.w,
          childAspectRatio: 2.0),
      itemBuilder: (context, index) {
        final item = searchList[index];
        return Card(
            elevation: 0.5,
            child: Container(
              decoration:
              BoxDecoration(border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  item,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ));
      },
    );
  }
}
