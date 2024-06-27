import 'package:flutter/material.dart';
import 'package:product_app/model/cart.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;


AppBar myappBar(BuildContext context,String title){
  return AppBar(
    backgroundColor: Colors.blueAccent,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,fontWeight: FontWeight.bold,

      ),
    ),

    actions: [
          Row(
            children: [
             badges.Badge(
                badgeContent: Text(
                  '${Provider.of<SelectedProduct>(context).selectedProducts.length}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
               badgeStyle: badges.BadgeStyle(
                 badgeColor: Colors.orangeAccent,
               ),
               child:Icon(Icons.add_shopping_cart),
              ),
              SizedBox(width: 25),
              Padding(
                  padding:EdgeInsets.only(
                    right: 20,
                  ),
                child: Text(
                  '\$ ${Provider.of<SelectedProduct>(context).getTotal()}',
                ),
              ),
            ],
          ),
    ],
  );
}