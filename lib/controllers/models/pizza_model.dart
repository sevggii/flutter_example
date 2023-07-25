
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