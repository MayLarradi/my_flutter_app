import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool details;
  ProductItem({Key? key, required this.product, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              color: Colors.blueGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${product["name"]}"),
                            Text(
                              "MAD ${product["price"]}",
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            (product["promotion"] == true
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Container()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  for (int i = 0; i < product['stars']; i++)
                                    const Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      /*
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductsDetails(
                              productId: product['id'],
                            ),
                          ));*/
                      Navigator.pushNamed(context, "/productDetails",
                          arguments: product['id']);
                    },
                    child: Image(
                        width: 200,
                        image: AssetImage(
                          '${product['image']}',
                        )),
                  )
                ],
              ),
            ),
            if (details)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${product['description']}",
                  ),
                ),
              ),
          ],
        ),
      ),
    );
    ;
  }
}
