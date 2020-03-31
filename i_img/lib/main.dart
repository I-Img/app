import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iimg/compents/buttomNav.dart';
import 'package:iimg/compents/waterfall.dart';
import 'package:iimg/view/home.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        "home": (context) => Home(),
      },
      home: MyHomePage(title: 'I-IMG'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random rnd = new Random();

  List<String> urls = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585654703340&di=d8becea6fd14350f82829f2a134aac34&imgtype=0&src=http%3A%2F%2Ft7.baidu.com%2Fit%2Fu%3D2436905109%2C3905541917%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D1000%26h%3D1500',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585653374152&di=b6f69ef7f63e909da8029e3ed7f43dfd&imgtype=0&src=http%3A%2F%2Ft7.baidu.com%2Fit%2Fu%3D3293692353%2C1129942707%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D1280%26h%3D1920',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585654766042&di=56ba6bfb0ca0ed3565611cea2c7a29ff&imgtype=0&src=http%3A%2F%2Ft9.baidu.com%2Fit%2Fu%3D2711106734%2C4181328260%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D1200%26h%3D800',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585654778391&di=e128c0620c5079d87249a119f6657e40&imgtype=0&src=http%3A%2F%2Ft8.baidu.com%2Fit%2Fu%3D2030094778%2C4096889353%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D909%26h%3D605',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585654814135&di=ca51ab45e6415b8ecdaf46dca6a7501f&imgtype=0&src=http%3A%2F%2Ft8.baidu.com%2Fit%2Fu%3D984622012%2C3258747915%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D1200%26h%3D800'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          itemBuilder: (context, index) {
            var width = 0.0;
            switch (rnd.nextInt(4)) {
              case 0:
                width = rnd.nextInt(400) + 0.0;
                break;
              case 1:
                width = rnd.nextInt(500) + 0.0;
                break;
              case 2:
                width = rnd.nextInt(600) + 0.0;
                break;
              case 3:
                width = rnd.nextInt(700) + 0.0;
                break;
              default:
            }

            if (width < 300) {
              width += 300.0;
            }
            return Tile(urls[rnd.nextInt(4)], width);
          },
          staggeredTileBuilder: (index) => new StaggeredTile.fit(2)),
      bottomNavigationBar: BottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
    );
  }
}
