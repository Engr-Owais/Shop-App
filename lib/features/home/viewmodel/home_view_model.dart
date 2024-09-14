import 'dart:async';

import '../../../core/base/viewmodel/base_view_model.dart';

import '../model/home_model.dart';
import '../service/IProductService.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';
import '../service/product_service.dart';

class HomeViewModel extends BaseViewModel {
  late IProductService productService;
  List<HomeModel> items = [];
  HomeModel? itemDetail;
  List<HomeModel> basketItems = [];
  double totalPrice = 0;
  bool isLoading = true;
  int index = 0;
  List<HomeModel> filteredItems = []; // List to store filtered items
  String searchQuery = '';

  // Initialize Method
  @override
  void init() {
    Timer(context.durationNormal, loadPage);
    productService = ProductService(networkManager.dio);
  }

  // Api connection
  Future<void> fetchItems() async {
    items = await productService.fetchAllProducts();
    filteredItems = items; // Initialize filtered items with all products

    setState(() {});
  }

  // Search and filter items based on query
  void searchItems(String query) {
    searchQuery = query;
    if (searchQuery.isEmpty) {
      filteredItems = items;
    } else {
      filteredItems = items.where((item) {
        return item.title!.toLowerCase().contains(searchQuery.toLowerCase());
      }).toList();
    }
    setState(() {});
  }

// Api connection
  Future<void> fetchDetails({int? index}) async {
    itemDetail = await productService.fetchProductDetail(index: index ?? 0);

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
