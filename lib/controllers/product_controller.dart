import 'package:fuelit_pilot/data/api/repository/product_repo.dart';
import 'package:fuelit_pilot/models/products_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final ProductRepo productRepo;
  ProductController({required this.productRepo, apiClient});

  List<dynamic> _productList = [];
  List<dynamic> get productList => _productList;
  Future<void> getProductList() async {
    Response response = await productRepo.getProductList();
    if (response.statusCode == 200) {
      _productList.addAll(Product.fromJson(response.body).products);
      update();
    } else {}
  }
}
