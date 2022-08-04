import 'package:shopapp2/models/home_model.dart';

class CategoryProductsModel {
  bool? status;
  CategoryProductsDataModel? data;

  CategoryProductsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = CategoryProductsDataModel.fromJson(json['data']);
  }
}

class CategoryProductsDataModel {
  int? currentPage;
  List<ProductModel> data = <ProductModel>[];

  CategoryProductsDataModel.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    json['data'].forEach((element) {
      data.add(ProductModel.fromJson(element));
    });
  }
}
