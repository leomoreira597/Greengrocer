import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class ProductScreen extends StatelessWidget {
  final ItemModel item;

  ProductScreen({Key? key, required this.item}) : super(key: key);
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(item.imageUrl),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    offset: const Offset(0, 2),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.itemName,
                        style: const TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Container(
                        height: 30,
                        width: 70,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  Text(
                    utilsServices.priceToCurrency(item.price),
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.customSwatchColor,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        item.description,
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Comprar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
