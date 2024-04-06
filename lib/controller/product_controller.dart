import 'package:get/get.dart';
import 'package:learn_flutter_getx_state_management/model/productModel.dart';
import 'package:learn_flutter_getx_state_management/service/api_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  List productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  Future<void> fetchProduct() async {
    try {
      isLoading(true);
      var products = await ApiServices.fetchProducts();
      if(products != null) {
        productList.assignAll(products);
      }

    } finally {
      isLoading(false);
    }
  }
}