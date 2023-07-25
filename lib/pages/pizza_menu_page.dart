import 'package:flutter/material.dart';
import 'package:flutter_application_5/controllers/pizza_controller.dart';
import 'package:get/get.dart';
import '../models/pizza_model.dart';

class PizzaMenuPage extends StatefulWidget {
  const PizzaMenuPage({Key? key}) : super(key: key);

  @override
  _PizzaMenuPageState createState() => _PizzaMenuPageState();
}

class _PizzaMenuPageState extends State<PizzaMenuPage> {
  final _pizzaController = Get.put(PizzaController());

 @override
 void initState(){
  super.initState();
  _pizzaController.fetchPizzas();
 }
 
 Widget build(BuildContext context) {
   return Scaffold(
     appBar:
       AppBar(
         title:
           Text('Pizza Menu'),
       ),
     body:
       ListView.builder(
         itemCount:
           pizzas.length,
         itemBuilder:
           (ctx, index) {
             final pizza = pizzas[index];
             return GestureDetector(
               onTap :
                 () {},
               child :
                 Card(child :
                   Column(children:[
                     Image.network(pizza.img),
                     SizedBox(height :10),
                     Text(pizza.name),
                     SizedBox(height :5),
                     Text(pizza.price.toString())
                   ])
                )
              );
            },
          ),
        );
      }
}

/*class PizzaMenuPage extends StatelessWidget {
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
                    Image.network(pizza.img),
                    SizedBox(height :10),
                    Text(pizza.name),
                    SizedBox(height :5),
                    Text(pizza.price.toString())
                  ])
                )
              );
            },
          ));
        }
  }*/