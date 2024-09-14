import 'dart:async';

import 'package:shopping_app/features/detail/service/DetailProductService.dart';

import '../../../core/base/viewmodel/base_view_model.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';
import '../../home/model/home_model.dart';
import '../service/product_detail_service.dart';

class DetailViewModel extends BaseViewModel {
  late DetailProductService productService;
  List<HomeModel> items = [];
  List<HomeModel> basketItems = [];
  double totalPrice = 0;
  bool isLoading = true;

  // Initialize Method
  @override
  void init() {
    Timer(context.durationNormal, loadPage);
    productService = ProductDetailService(networkManager.dio);
  }

  // Api connection
  Future<void> fetchItems() async {
    items = await productService.fetchProductDetail();
    setState(() {});
  }

  // Product count increment
  void incrementCount(HomeModel model) {
    model.isOpen = true;
    model.count++;
    print('Current count: ${model.count}'); // Add this for debugging
    totalMoney(model);
    if (!basketItems.contains(model)) {
      basketItems.add(model);
    }
    setState(() {});
  }

  // Product count deincrement
  void deIncrementCount(HomeModel model) {
    if (model.count > 0) {
      model.count--;
      totalMoney(model);
      setState(() {});

      // Remove from basketItems only after the UI has been updated
      if (model.count == 0) {
        Future.delayed(const Duration(milliseconds: 100), () {
          basketItems.remove(model);
          setState(() {});
        });
      }
    }
    model.isOpen = model.count > 0;
  }

  // Calculate total money
  void totalMoney(HomeModel model) {
    if (model.price != null) {
      totalPrice = items.fold(
          0,
          (previousValue, element) =>
              previousValue + element.price! * element.count);
      model.productPrice = model.price! * model.count;
      setState(() {});
    }
  }

  // Method that makes data come animatically
  void loadPage() {
    isLoading = false;
    setState(() {});
  }
}
