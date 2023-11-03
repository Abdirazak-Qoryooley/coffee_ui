// ignore_for_file: unused_local_variable

import 'package:coffee_ui/controller/cart_controller.dart';
import 'package:coffee_ui/controller/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class Cart_page extends StatelessWidget {
  Cart_page({
    super.key,
  });
  final cartcontroller controller = Get.put(cartcontroller());
  final productcontroller controller2 = Get.put(productcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0201520),
      // appBar: AppBar(
      //   title: Text('Cart'),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                'Cart',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Obx(() => ListView.builder(
                      itemCount: controller.cartitems.length,
                      itemBuilder: (context, index) {
                        final cartitems = controller.cartitems[index];
                        return Slidable(
                          endActionPane:
                              ActionPane(motion: ScrollMotion(), children: [
                            SlidableAction(
                              onPressed: (context) {
                                controller.RemoveToCart(index);
                              },
                              icon: Icons.delete,
                              backgroundColor: Colors.red,
                            ),
                          ]),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            tileColor: Color(0xff0201520),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            leading: Container(
                              width: 90,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: AssetImage(
                                      controller.cartitems[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cuppiccino',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  controller.cartitems[index].name,
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  controller.cartitems[index].price.toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(CupertinoIcons.minus,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                SizedBox(width: 5),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(CupertinoIcons.plus,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )))
          ],
        ),
      ),
    );
  }
}
