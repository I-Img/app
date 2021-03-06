import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iimg/compents/buttomNav.dart';
import 'package:iimg/compents/category.dart';

class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CategoryState();
  }
}

class CategoryState extends State<Category> {
  final List<CategoryUrlAndName> metadata = [
    CategoryUrlAndName(
      "http://172.21.111.230/ae6cc8df0148ae7527e7c2cd8c514a97d1a98e3a.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/853efe71f9bcd2119e30f9f0a3fa56f18d6775c0.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/6b05e004facc9fce1c3473a9eb443eb410a228c2.gif",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/da680dbb2b51f22acaa902aa74f5846877c5d4e8.gif",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/34133b4144f443855935b2a976862b4bbf566f4f.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/2783d60f374eda76ce5bacf037ef7cbdac0bf3e8.gif",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/bbb76efdfc74a4d91fcbdd1a8e7a9a99192e3844.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/ba25e196ee6101d8bbae5f466f9ce78b0c4c84fa.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/3ccea7bc34991b8d212fcea31087b911ca164500.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/f309790128e61730df74616133112c2eba29a031.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/b32ad9d20ca50583d8caa32588e02a01cb1254c3.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/8cd32513b226b9aadb172f4c728ed2c93d9534e6.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/c43b3fc69ad508aa2a0f9ec9e403753791aac335.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/1899ce4be956133e5098c294582c73056937eb17.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/f9d397945b4d918af5634833f8096a62fb662d22.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/2497f8aa387357943f163c291712a515adc3d2e0.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/a6dd241fd48d1ff6135c8f15acee32bcade9b0d2.jpg",
    ),
    CategoryUrlAndName(
      "http://172.21.111.230/e613c9343c509c607ec445b6325ad04325dd1e43.gif",
    ),
  ];

  final List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(2, 4),
    const StaggeredTile.count(4, 2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryDetail(metadata, _staggeredTiles),
      bottomNavigationBar: BottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
    );
  }
}
