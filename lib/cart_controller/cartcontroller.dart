import 'package:cosmetro/model/model.dart';
import 'package:cosmetro/service/service.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
        'Product Added', 'you have added the ${product.name}to the cart');
  }
}
