import 'package:fuelit_pilot/data/api/api_client.dart';
import 'package:get/get.dart';

class ProductRepo extends GetxService {
  final ApiClient apiClient;
  ProductRepo({required this.apiClient});

  Future<Response> getProductList() async {
    return await apiClient.getData("end point url");
  }
}
