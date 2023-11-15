import 'package:flutter/material.dart';
import 'package:grocery_app/models/shop_item.dart';

class CartModel extends ChangeNotifier {
  // List of items on sale
  final List<ShopItem> _shopItems = [
    ShopItem(name: 'Avocado', price: '4.00', imagePath: 'lib/images/avocado.png', color: Colors.green),
    ShopItem(name: 'Banana', price: '2.50', imagePath: 'lib/images/banana.png', color: Colors.yellow),
    ShopItem(name: 'Chicken', price: '12.80', imagePath: 'lib/images/chicken.png', color: Colors.brown),
    ShopItem(name: 'Water', price: '1.00', imagePath: 'lib/images/water.png', color: Colors.blue),

  ];

  // List of items in cart
  final List<ShopItem> _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // Add item to cart
  void addItemToCart(ShopItem item) {
    _cartItems.add(item);
    notifyListeners();  
  }

  // Remove item from cart
  void removeItemFromCart(ShopItem item) {
    _cartItems.remove(item);
    notifyListeners();
  }

  // Calculate total price
  String calculateTotalPrice() {
    double total = 0;
    for (var item in _cartItems) {
      total += double.parse(item.price);
    }
    return total.toStringAsFixed(2);
  }
  
}