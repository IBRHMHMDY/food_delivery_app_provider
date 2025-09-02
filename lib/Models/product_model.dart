class ProductModel {
  final String image, title, category;
  final double price, rate, distance;

  ProductModel({
    required this.image,
    required this.title,
    required this.price,
    required this.rate,
    required this.category,
    required this.distance,
  });
}

List<ProductModel> products = [
  ProductModel(
    image: 'assets/food-delivery(foodel)/ramen/sapporo_miso_ramen.png',
    title: 'Sapporo Miso',
    price: 3.9,
    rate: 5,
    distance: 150,
    category: "Ramen",
  ),
  ProductModel(
    image: 'assets/food-delivery(foodel)/ramen/kurume_ramen.png',
    title: 'Kurume Ramen',
    price: 4.3,
    rate: 4.9,
    distance: 600,
    category: "Ramen",
  ),
  ProductModel(
    image: 'assets/food-delivery(foodel)/ramen/hakata_ramen.png',
    title: 'Hakata Ramen',
    price: 3.9,
    distance: 400,
    rate: 4.8,
    category: "Ramen",
  ),
  ProductModel(
    image: 'assets/food-delivery(foodel)/ramen/shrimp_fried_rice.png',
    title: 'Shrimp Fried Rice',
    price: 4.9,
    distance: 800,
    rate: 4.5,
    category: "Ramen",
  ),
  ProductModel(
    image: 'assets/food-delivery(foodel)/ramen/fullset_ramen.png',
    title: 'Fullset Ramen',
    price: 5.9,
    distance: 400,
    rate: 4.7,
    category: "Ramen",
  ),
  //for burger
  ProductModel(
    image: 'assets/food-delivery(foodel)/burger/grilled-beef-burger.png',
    title: 'Grilled beef burger',
    price: 33.5,
    distance: 150,
    rate: 5.0,
    category: "Burger",
  ),
  ProductModel(
    image: 'assets/food-delivery(foodel)/burger/fried-chicken-burger.png',
    title: 'Fried Chicken Burger',
    price: 23.0,
    distance: 150,
    rate: 4.7,
    category: "Burger",
  ),
  ProductModel(
    image: 'assets/food-delivery(foodel)/burger/cheese-burger.png',
    title: 'Cheese Burger',
    price: 40.5,
    distance: 100,
    rate: 4.5,
    category: "Burger",
  ),
  ProductModel(
    image: 'assets/food-delivery(foodel)/burger/beef-burger.png',
    title: 'Beef-Burger',
    price: 18.5,
    distance: 200,
    rate: 5.0,
    category: "Burger",
  ),
  // for salad
  ProductModel(
    image: 'assets/food-delivery(foodel)/veg-salad.png',
    title: 'Veg Salad',
    price: 7.0,
    distance: 300,
    rate: 5.0,
    category: "Salad",
  ),
  ProductModel(
    image: 'assets/food-delivery(foodel)/mix-salad.png',
    title: 'Mix Salad',
    price: 10.0,
    distance: 350,
    rate: 4.8,
    category: "Salad",
  ),
  // for waffle
  ProductModel(
    image: 'assets/food-delivery(foodel)/berry-bonanza-waffle.png',
    title: 'Berry Bonanza Waffle',
    price: 10.0,
    distance: 500,
    rate: 4.5,
    category: "Waffle",
  ),
];