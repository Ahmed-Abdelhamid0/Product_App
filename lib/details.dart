import 'package:flutter/material.dart';
import 'package:product_app/app_bar.dart';
import 'package:product_app/model/products.dart';
import 'package:product_app/txt.dart';

class DetailsViewState extends StatefulWidget {
  const DetailsViewState({super.key});

  @override
  State<DetailsViewState> createState() => _DetailsViewStateState();
}

class _DetailsViewStateState extends State<DetailsViewState> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    final myProduct = (ModalRoute.of(context)?.settings.arguments ??
        ModalRoute.of(context)?.settings.arguments) as MyProduct;
    return SafeArea(
        child: Scaffold(
      appBar: myappBar(context, 'Product Details'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              myProduct.isImageNetwork
                  ? Image.network(
                      myProduct.imagePath,
                      fit: BoxFit.contain,
                    )
                  : Image.asset(
                      myProduct.imagePath,
                      fit: BoxFit.contain,
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(myProduct.title),
                  Text('\$ ${myProduct.price}'),
                ],
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: getRev(myProduct.review),
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                width: double.infinity,
                child: Text('Details : '),
              ),
              Divider(),
              myText(myProduct.details,
                  maxLines: showMore ? null : 3, textOverflow: TextOverflow.fade),
              Divider(),
              MaterialButton(
                color: Colors.transparent,
                textColor: Colors.greenAccent,
                onPressed: () {
                  setState(() {
                    showMore = !showMore;
                  });
                },
                child: Text(
                  '${showMore ? 'show less' : 'shoe more'}',
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  List<Icon> getRev(int rev) {
    List<Icon> list = [];
    for (int i = 1; i <= 5; i++) {
      if (i < rev) {
        list.add(Icon(
          Icons.star,
          color: Colors.yellow,
        ));
      } else {
        list.add(Icon(
          Icons.star,
          color: Colors.grey,
        ));
      }
    }
    return list;
  }
}
