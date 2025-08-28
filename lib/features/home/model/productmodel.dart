class Productmodel {
  final String image;
  final double price;
  final String name;
  final String weight;
  final int id;
  int quantity = 1;
  Productmodel({
    required this.price,
    required this.name,
    required this.weight,
    required this.id,
    required this.image,
    required this.quantity,
  });
}

List<Productmodel> products = [
  Productmodel(
    price: 20,
    name: 'banana',
    weight: '1',
    id: 1,
    image: 'assets/images/banana.png',
    quantity: 0,
  ),
  Productmodel(
    price: 10,
    name: 'apple',
    weight: '1',
    id: 2,
    image: 'assets/images/apple.png',
    quantity: 0,
  ),
  Productmodel(
    price: 15,
    name: 'mango',
    weight: '1',
    id: 3,
    image: 'assets/images/mango.png',
    quantity: 0,
  ),
  Productmodel(
    price: 20,
    name: 'banana',
    weight: '1',
    id: 4,
    image: 'assets/images/banana.png',
    quantity: 0,
  ),
  Productmodel(
    price: 10,
    name: 'apple',
    weight: '1',
    id: 5,
    image: 'assets/images/apple.png',
    quantity: 0,
  ),
  Productmodel(
    price: 15,
    name: 'mango',
    weight: '1',
    id: 6,
    image: 'assets/images/mango.png',
    quantity: 0,
  ),
];
