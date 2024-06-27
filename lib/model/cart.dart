import 'package:flutter/foundation.dart';
import 'package:product_app/model/products.dart';


class SelectedProduct extends ChangeNotifier {
  List<MyProduct> selectedProducts =
  [

  ];

  void addToCart(MyProduct product){
    selectedProducts.add(product);
    notifyListeners();
  }

  double getTotal(){
    double total=0;
    selectedProducts.forEach((element) {
      total+=element.price;
    });
    return total;
  }
}


