import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryUrlAndName {
  final String url;
  final String name;

  CategoryUrlAndName(this.url, {this.name});
}

class CategoryDetail extends StatelessWidget {
  final List<CategoryUrlAndName> metadata;
  final List<StaggeredTile> staggeredTiles;

  List<_catgory> categorys = new List();

  Random rnd = new Random();

  CategoryDetail(this.metadata, this.staggeredTiles) {
    this.metadata.forEach((c) {
      if (c.name == null) {
        categorys.add(_catgory(
          c.url,
        ));
      } else {
        categorys.add(_catgory(c.url, name: c.name));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new StaggeredGridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      staggeredTiles: staggeredTiles,
      children: categorys,
    );
  }
}

class _catgory extends StatelessWidget {
  final String name;
  final String url;

  _catgory(this.url, {this.name = ""});

  @override
  Widget build(BuildContext context) {
    if (this.name != "") {
      return InkWell(
        child: Padding(
          padding: EdgeInsets.all(2.5),
          child: new Stack(
            alignment: Alignment.center,
            children: <Widget>[
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: this.url,
                fit: BoxFit.fitHeight,
              ),
              Text(
                this.name,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ),
        ),
      );
    }

    return new InkWell(
        child: Padding(
      padding: EdgeInsets.all(2.5),
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: this.url,
        fit: BoxFit.fitHeight,
      ),
    ));
  }
}
