class Productmodel {
  final String image;
  final double price;
  final String name;
  final String weight;
  final int id;
  Productmodel({
    required this.price,
    required this.name,
    required this.weight,
    required this.id,
    required this.image,
  });
}

List<Productmodel> products = [
  Productmodel(
    price: 20,
    name: 'banana',
    weight: '1',
    id: 1,
    image: 'assets/images/banana.png',
  ),
  Productmodel(
    price: 10,
    name: 'apple',
    weight: '1',
    id: 2,
    image: 'assets/images/apple.png',
  ),
  Productmodel(
    price: 15,
    name: 'mango',
    weight: '1',
    id: 3,
    image: 'assets/images/mango.png',
  ),
  Productmodel(
    price: 20,
    name: 'banana',
    weight: '1',
    id: 4,
    image: 'assets/images/banana.png',
  ),
  Productmodel(
    price: 10,
    name: 'apple',
    weight: '1',
    id: 5,
    image: 'assets/images/apple.png',
  ),
  Productmodel(
    price: 15,
    name: 'mango',
    weight: '1',
    id: 6,
    image: 'assets/images/mango.png',
  ),
];
