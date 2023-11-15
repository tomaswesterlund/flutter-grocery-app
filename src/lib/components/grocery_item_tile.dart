import 'package:flutter/material.dart';
import 'package:grocery_app/models/shop_item.dart';

class GroceryItemTile extends StatelessWidget {
  final ShopItem shopItem;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.shopItem,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: shopItem.color.withAlpha(100),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Image
              Image.asset(
                shopItem.imagePath,
                height: 64.0,
              ),

              // Item name
              Text(shopItem.name),

              // Item price + Button
              MaterialButton(
                onPressed: onPressed,
                color: shopItem.color.withAlpha(200),
                child: Text(
                  "\$${shopItem.price}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
