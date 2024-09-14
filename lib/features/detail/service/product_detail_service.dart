import 'dart:io';

import '../../home/model/home_model.dart';
import 'DetailProductService.dart';

class ProductDetailService extends DetailProductService {
  ProductDetailService(super.dio);

  @override
  Future<List<HomeModel>> fetchProductDetail({int? index}) async {
    final response = await dio.get('/products/$index');
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => HomeModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
