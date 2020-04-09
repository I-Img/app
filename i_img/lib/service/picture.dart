import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grpc/grpc.dart';
import 'package:iimg/compents/category.dart';
import 'package:iimg/grpc/img.pbgrpc.dart';
import 'package:iimg/grpc/img.pbenum.dart' as sc;
import 'package:iimg/service/grpc.dart';
import 'package:imei_plugin/imei_plugin.dart';

class PictureGRPC {
  ClientChannel channel;

  PictureServiceClient picClient;

  PictureGRPC() {
    this.channel = GRPC().chan;
    picClient = PictureServiceClient(channel);
  }

  Future<CategoryWithUrlAndTiles> fetchPictures() async {
    try {
//      var imei = await ImeiPlugin.getImei();
//      var uuid = await ImeiPlugin.getId();
//
//      var id = "";
//
//      if (imei != ""){
//        id = imei;
//      }else{
//        id = uuid;
//      }

//      print(id);
      var req = FetchPicturesRequest();
      req.uUID = "1234";
      req.pos = 1;

      var res = await picClient.fetchPicture(
        req,
      );

      if (res.status != sc.StatusCode.SUCC) {
        return Future.error(res.msg);
      }

      var pics = new List<CategoryUrlAndName>();
      var tils = new List<StaggeredTile>();

      res.info.forEach((f) {
        print(f.url);
        print(f.axisX);
        print(f.axisY);
        pics.add(CategoryUrlAndName(f.url));
        tils.add(StaggeredTile.count(f.axisX, f.axisY));
      });

      return CategoryWithUrlAndTiles(pics, tils);
    } catch (e) {
      return Future.error(e);
    }
  }
}
