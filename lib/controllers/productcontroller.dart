import 'package:get/state_manager.dart';
import 'package:shoppingapp/models/product.dart';
import 'package:shoppingapp/services/remote_services.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void init() {
    fetchproducts();
    super.onInit();
  }

  void fetchproducts() async {
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products;
    }
  }
}
