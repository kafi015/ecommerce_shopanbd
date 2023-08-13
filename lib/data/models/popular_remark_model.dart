import 'package:ecommerce_shopanbd/data/models/product.dart';

class PopularRemarkModel {
  String? msg;
  List<Product>? popularRemarkData;

  PopularRemarkModel({this.msg, this.popularRemarkData});

  PopularRemarkModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      popularRemarkData = <Product>[];
      json['data'].forEach((v) {
        popularRemarkData!.add(Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (popularRemarkData != null) {
      data['data'] = popularRemarkData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

