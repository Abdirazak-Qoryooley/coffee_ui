class product {
  final String image;
  final String name;
  final double price;

  product({required this.image, required this.name, required this.price});
}

List<product> products = [
  product(image: 'images/2.jpg', name: 'Cinnamon & Cocoa', price: 1),
  product(image: 'images/3.jpg', name: 'Drizzled with Caramel', price: 2),
  product(image: 'images/4.jpg', name: 'Bursting Blueberry', price: 3),
  product(image: 'images/2.jpg', name: 'Dalgona Whipped Macha', price: 0.5),
];
