import 'package:flutter/material.dart';
import 'package:flutter_responsive/responsive_helper.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bannerBox = Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.red));
    final bannerText = Text(
        '\t\tHey there!!!!!\n\t\t\tSumit Tiware, here creating an responsive\n flutter applications....stay tunned.');
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive app'),
      ),
      body: SafeArea(
          child: ResponsiveWidget(
        mobile: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            bannerBox,
            SizedBox(
              height: 20,
            ),
            bannerText
          ],
        ),
        tablet: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            bannerBox,
            SizedBox(
              width: 20,
            ),
            bannerText
          ],
        ),
      )),
    );
  }
}
