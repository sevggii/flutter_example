import 'package:flutter/material.dart';

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

class Pizza {
  final String name;
  final String price;
  final String imageLink;

  Pizza({required this.name, required this.price, required this.imageLink});
}

List<Pizza> pizzas = [
   Pizza(name: "Margherita", price:"\$9.99", imageLink:"https://example.com/margherita.jpg"),
   Pizza(name: "Pepperoni", price:"\$11.99", imageLink:"https://example.com/pepperoni.jpg"),
   // Add more pizzas here...
];