import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }




  final List<String> items = List<String>.generate(100, (i) => '$i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Horizontal list'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrains){
            double _width = constrains.constrainWidth();

            return _width < 500
                ? ListView.builder(itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Card(
                    child: Text('${items[index]}'),
                  );
                }
            )
                : ListView.builder(itemCount: items.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  return Card(
                    child: Text('${items[index]}'),
                  );
                }
            );
          },
        )
    );
  }
}
