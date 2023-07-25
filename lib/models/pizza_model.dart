class Pizza {
  final int? id;
  final String? name;
  final bool? veg;
  final int? price;
  final String? description;
  final int? quantity;
  final String? img;
  final List<Sizeandcrust>? sizeandcrust;

  Pizza({
    this.id,
    this.name,
    this.veg,
    this.price,
    this.description,
    this.quantity,
    this.img,
    this.sizeandcrust,
  });

  Pizza.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      name = json['name'] as String?,
      veg = json['veg'] as bool?,
      price = json['price'] as int?,
      description = json['description'] as String?,
      quantity = json['quantity'] as int?,
      img = json['img'] as String?,
      sizeandcrust = (json['sizeandcrust'] as List?)?.map((dynamic e) => Sizeandcrust.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'veg' : veg,
    'price' : price,
    'description' : description,
    'quantity' : quantity,
    'img' : img,
    'sizeandcrust' : sizeandcrust?.map((e) => e.toJson()).toList()
  };
}

class Sizeandcrust {
  final List<MediumPan>? mediumPan;
  final List<Mediumstuffedcrustcheesemax>? mediumstuffedcrustcheesemax;
  final List<Mediumstuffedcrustvegkebab>? mediumstuffedcrustvegkebab;

  Sizeandcrust({
    this.mediumPan,
    this.mediumstuffedcrustcheesemax,
    this.mediumstuffedcrustvegkebab,
  });

  Sizeandcrust.fromJson(Map<String, dynamic> json)
    : mediumPan = (json['mediumPan'] as List?)?.map((dynamic e) => MediumPan.fromJson(e as Map<String,dynamic>)).toList(),
      mediumstuffedcrustcheesemax = (json['mediumstuffedcrustcheesemax'] as List?)?.map((dynamic e) => Mediumstuffedcrustcheesemax.fromJson(e as Map<String,dynamic>)).toList(),
      mediumstuffedcrustvegkebab = (json['mediumstuffedcrustvegkebab'] as List?)?.map((dynamic e) => Mediumstuffedcrustvegkebab.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'mediumPan' : mediumPan?.map((e) => e.toJson()).toList(),
    'mediumstuffedcrustcheesemax' : mediumstuffedcrustcheesemax?.map((e) => e.toJson()).toList(),
    'mediumstuffedcrustvegkebab' : mediumstuffedcrustvegkebab?.map((e) => e.toJson()).toList()
  };
}

class MediumPan {
  final int? price;

  MediumPan({
    this.price,
  });

  MediumPan.fromJson(Map<String, dynamic> json)
    : price = json['price'] as int?;

  Map<String, dynamic> toJson() => {
    'price' : price
  };
}

class Mediumstuffedcrustcheesemax {
  final int? price;

  Mediumstuffedcrustcheesemax({
    this.price,
  });

  Mediumstuffedcrustcheesemax.fromJson(Map<String, dynamic> json)
    : price = json['price'] as int?;

  Map<String, dynamic> toJson() => {
    'price' : price
  };
}

class Mediumstuffedcrustvegkebab {
  final int? price;

  Mediumstuffedcrustvegkebab({
    this.price,
  });

  Mediumstuffedcrustvegkebab.fromJson(Map<String, dynamic> json)
    : price = json['price'] as int?;

  Map<String, dynamic> toJson() => {
    'price' : price
  };
}

//List<Pizza> pizzas = [];


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