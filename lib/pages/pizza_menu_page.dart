import 'package:flutter/material.dart';

import '../controllers/models/pizza_model.dart';

class PizzaMenuPage extends StatelessWidget {
  const PizzaMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza Menu'),
      ),
      body: ListView.builder(
        itemCount: pizzas.length,
        itemBuilder: (ctx, index) {
          final pizza = pizzas[index];
          return GestureDetector(
            onTap: () {},
            child: Card(
              child:
                  Column(children:[
                    Image.network(pizza.imageLink),
                    SizedBox(height :10),
                    Text(pizza.name),
                    SizedBox(height :5),
                    Text(pizza.price)
                  ])
                )
              );
            },
          ));
        }
  }