// ignore_for_file: file_names

import 'package:dio/dio.dart';

import '../../home/model/home_model.dart';

abstract class DetailProductService {
  final Dio dio;

  DetailProductService(this.dio);

  Future<List<HomeModel>> fetchProductDetail();
}
