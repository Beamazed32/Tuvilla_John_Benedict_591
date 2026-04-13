import '../models/prooduct_model.dart';

 

class ProductController {


  final List<Prooducts> _products = [];

 

  List<Prooducts> getAllProducts() {

    return List.unmodifiable(_products);

  }

 


  void addProduct(String id, String name, double price, double quantity) {

    final product = Prooducts(id: id, name: name, price: price, quantity: quantity);

    _products.add(product);

  }

 
Product? findById(String id) {

    try {

      return _products.firstWhere((p) => p.id == id);

    } catch (e) {

      return null; 

    }

  }

  double calculateGrandTotal(List<Prooducts> products) {
    double total = 0;
    for (var product in products) {
      total += product.price * product.quantity;
    }
    return total;
  }

  int countTotalItems(List<Prooducts> products) {
    int count = 0;
    for (var product in products) {
      count += product.quantity.toInt();
    }
    return count;
  }


  bool deleteProduct(String id) {

    final index = _products.indexWhere((p) => p.id == id);

    if (index != -1) {

      _products.removeAt(index);

      return true;

    }

    return false;

  }

 int getCount() {
return _products.length;

  }

}
