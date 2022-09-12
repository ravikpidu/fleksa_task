enum Complexity { simple, challenging, hard }

enum Affordability { affordable, pricey, luxurious }

class Menu {
  final String id, title, price;
  final List<String> categories;

  const Menu({
    required this.categories,
    required this.price,
    required this.id,
    required this.title,
  });
}
