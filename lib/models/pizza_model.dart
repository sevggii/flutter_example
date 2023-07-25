class Pizza {
    int id;
    String name;
    bool veg;
    int price;
    String description;
    int quantity;
    String img;
    List<Sizeandcrust> sizeandcrust;

    Pizza({
        required this.id,
        required this.name,
        required this.veg,
        required this.price,
        required this.description,
        required this.quantity,
        required this.img,
        required this.sizeandcrust,
    });

}

class Sizeandcrust {
    List<Medium> mediumPan;
    List<Medium> mediumstuffedcrustcheesemax;
    List<Medium>? mediumstuffedcrustvegkebab;
    List<Medium>? mediumStuffedCrustVegKebab;
    List<Medium>? mediumstuffedcrustchickenseekhkebab;
    List<Medium>? mediumStuffedCrustKebab;

    Sizeandcrust({
        required this.mediumPan,
        required this.mediumstuffedcrustcheesemax,
        this.mediumstuffedcrustvegkebab,
        this.mediumStuffedCrustVegKebab,
        this.mediumstuffedcrustchickenseekhkebab,
        this.mediumStuffedCrustKebab,
    });

}

class Medium {
    int price;

    Medium({
        required this.price,
    });
}

List<Pizza> pizzas = [];


/*class Pizza {
  final String name;
  final String price;
  final String imageLink;

  Pizza({required this.name, required this.price, required this.imageLink});
}

List<Pizza> pizzas = [
   Pizza(name: "Margherita", price:"\$9.99", imageLink:"https://img.freepik.com/free-photo/top-view-pepperoni-pizza-with-mushroom-sausages-bell-pepper-olive-corn-black-wooden_141793-2158.jpg?w=740&t=st=1690293893~exp=1690294493~hmac=48c71eeb9ffa458e849d118e59072010712dd0364505a5dbde088aa4f3d5f745"),
   Pizza(name: "Pepperoni", price:"\$11.99", imageLink:"https://img.freepik.com/free-photo/crispy-mixed-pizza-with-olives-sausage_140725-3095.jpg?w=740&t=st=1690293929~exp=1690294529~hmac=a1ea1974664ac24ee61f47ef04532c200446cc55fbca677af61cdf9552bf9724"),
   // Add more pizzas here...
];*/