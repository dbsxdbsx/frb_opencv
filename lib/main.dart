import 'package:flutter/material.dart';
import 'ffi.dart' if (dart.library.html) 'ffi_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<String> x1;
  late Future<String> x2;

  @override
  void initState() {
    super.initState();
    x1 = api1.testNoParam1();
    x2 = api2.testNoParam2();

    x1 = api1.testStringInt1(s: "test string input1", i: 1);
    x2 = api2.testStringInt2(s: "test string input2", i: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<List>(
        future: Future.wait([x1, x2]),
        builder: (ctx, snapshot) {
          final style = Theme.of(context).textTheme.headline4;
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              {
                if (!snapshot.hasError) {
                  // error if data is null
                  if (snapshot.data == null) {
                    return const Text("no data");
                  }

                  // deal with correct data
                  final data1 = snapshot.data![0];
                  final data2 = snapshot.data![1];
                  return Center(
                    child: Text(
                      '$data1,$data2',
                      style: style,
                    ),
                  );
                } else {
                  // snapshot error
                  return Center(
                    child: Text(
                      '${snapshot.error} occurred',
                      style: style,
                    ),
                  );
                }
              }
            default:
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
        },
      ),
    );
  }
}
