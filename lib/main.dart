import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
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
    'Item13',
    'Item14',
    'Item15',
    'Item16',
    'Item17',
    'Item18',
    'Item19',
    'Item20',
  ];

  @override
  Widget build(BuildContext context) {
    print('${(searchList.length - 1) / 2.toInt() * 100.toInt().round()}');
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              constraints: BoxConstraints(
                      minHeight: 300,
                      maxHeight: searchList.length > 12
                          ? 300
                          : (MediaQuery.of(context).size.height -
                              (searchList.length - 1) / 2.toInt() * 100)) /
                  2,
              width: double.infinity,
              alignment: Alignment.center,
              child: Center(child: Image.asset('assets/icons_png/logo.png'))),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                constraints: BoxConstraints(minHeight: 100, maxHeight: 720),
                child: Flexible(
                  fit: FlexFit.tight,
                  child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    shrinkWrap: true,
                    physics: searchList.length < 9
                        ? const NeverScrollableScrollPhysics()
                        : ScrollPhysics(),
                    itemCount: searchList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 2.0),
                    itemBuilder: (context, index) {
                      final item = searchList[index];
                      return Card(
                          elevation: 0.5,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Center(
                              child: Text(
                                item,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ));
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
