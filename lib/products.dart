import 'package:flutter/material.dart';
import 'package:product_app/model/cart.dart';
import 'package:product_app/model/products.dart';
import 'package:provider/provider.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedProduct>(builder: (context, products,child ) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 3,
        ),
        itemCount: allProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(7),
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.white,
                trailing: IconButton(
                  onPressed: () {
                    Provider.of<SelectedProduct>(context,listen: false).addToCart(allProducts[index]);
                  },
                  icon: Icon(Icons.add,color: Colors.black,),
                ),
                leading: Text('\$ ${allProducts[index].price}'),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('details', arguments: allProducts[index]);
                },
                child: allProducts[index].isImageNetwork
                    ? Image.network(allProducts[index].imagePath,
                        fit: BoxFit.contain)
                    : Image.asset(allProducts[index].imagePath,
                        fit: BoxFit.contain),
              ),
            ),
          );
        },
      );
    });
  }
}
