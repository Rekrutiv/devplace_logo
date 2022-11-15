import 'package:devplace_logo/widgets/list_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> searchList = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
    'Item9',
    'Item10',
    'Item11',
    'Item12',
    // 'Item13',
    // 'Item14',
    // 'Item15',
    // 'Item16',
    // 'Item17',
    // 'Item18',
    // 'Item19',
    // 'Item20',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding:  EdgeInsets.symmetric(vertical: 16.h),
            height: double.infinity,
            width: double.infinity,
            child: buildScrollView(searchList.length > 12
                ? SingleChildScrollView(
                    child: ListBodyWidget(searchList: searchList),
                  )
                : ListBodyWidget(searchList: searchList))));
  }

  Widget buildScrollView(Widget widgetBody) {
    return widgetBody;
  }
}
