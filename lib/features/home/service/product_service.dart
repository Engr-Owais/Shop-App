import 'dart:io';

import '../model/home_model.dart';
import 'IProductService.dart';
import 'product_service_end_points.dart';

class ProductService extends IProductService {
  ProductService(super.dio);

  @override
  Future<List<HomeModel>> fetchAllProducts() async {
    final response = await dio.get(ProductServiceEndPoints.PRODUCTS.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => HomeModel.fromJson(e)).toList();
      }
    }
    return [];
  }

  @override
  Future<HomeModel?> fetchProductDetail({required int index}) async {
    print("Detaillll $index");
    final response = await dio.get('https://fakestoreapi.com/products/$index');
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      // Ensure that data is a map (i.e., a single product)
      if (data is Map<String, dynamic>) {
        return HomeModel.fromJson(data);
      }
    }
    return null; // Return null if no product is found or an error occurs
  }
}
