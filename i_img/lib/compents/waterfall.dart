import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Tile extends StatelessWidget {
  final String url;
  final double height;

  Tile(this.url, this.height);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Stack(
        children: <Widget>[
          new Center(
            child: Padding(
              padding: EdgeInsets.only(left: 1.5, right: 1.5, top: 3),
              child: new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: this.url,
                // height: this.height,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
