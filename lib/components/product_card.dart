import 'package:coffee_ui/controller/cart_controller.dart';
import 'package:coffee_ui/controller/product.dart';
import 'package:coffee_ui/model.dart/model.dart';
import 'package:coffee_ui/screens/product_deteil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product_card extends StatelessWidget {
  Product_card({super.key});

  final productcontroller controller = Get.put(productcontroller());
  final cartcontroller controller2 = Get.put(cartcontroller());
  @override
  Widget build(BuildContext context) {
    return GetX<productcontroller>(builder: (controller) {
      return GridView.builder(
        itemCount: controller.products.length,
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            mainAxisExtent: 300),
        itemBuilder: (context, index) {
          final product = products[index];
          return InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 10, top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xff0574D56),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      offset: Offset(1, 10),
                      color: Color(0xff0574D56),
                      // blurStyle: BlurStyle.outer,
                      spreadRadius: 0),
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => product_deteil(
                                    Product: product,
                                  )));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image:
                                  AssetImage(controller.products[index].image),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    controller.products[index].name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: 130,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Color(0xff0463d46),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "\$${controller.products[index].price}",
                              style:
                                  TextStyle(fontSize: 23, color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                onPressed: () {
                                  controller2.AddToCart(product);
                                },
                                icon: Icon(Icons.add)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
