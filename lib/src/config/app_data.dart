import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/models/user_model.dart';

import '../models/cart_item_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Maçã',
  imageUrl: 'assets/fruits/apple.png',
  unit: 'Kg',
  price: 5.5,
  description: 'A melhor maça de toda região do mundo todo que você já provou',
);

ItemModel grape = ItemModel(
  itemName: 'Uva',
  imageUrl: 'assets/fruits/grape.png',
  unit: 'Kg',
  price: 10.50,
  description:
      'Essa uva é a uva que não se comprar em qualquer lugar pq se faz vinho com ela',
);

ItemModel guava = ItemModel(
  itemName: 'Goiaba',
  imageUrl: 'assets/fruits/guava.png',
  unit: 'Kg',
  price: 9.6,
  description: 'A goiaba que vale o preço da sua passagem',
);

ItemModel kiwi = ItemModel(
  itemName: 'Kiwi',
  imageUrl: 'assets/fruits/kiwi.png',
  unit: 'Kg',
  price: 20.6,
  description: 'O melhor kiwi da sua miseravel vida',
);

ItemModel mango = ItemModel(
  itemName: 'Manga',
  imageUrl: 'assets/fruits/mango.png',
  unit: 'Kg',
  price: 8.5,
  description: 'Manga Bruta',
);

ItemModel papaya = ItemModel(
  itemName: 'Mamão Papaya',
  imageUrl: 'assets/fruits/papaya.png',
  unit: 'Kg',
  price: 6.4,
  description: 'Doce, doce, doce, parece que tem mel',
);

List<ItemModel> items = [apple, grape, guava, kiwi, mango, papaya];

List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];

List<CartItemModel> cartItens = [
  CartItemModel(
    item: apple,
    quantity: 2,
  ),
  CartItemModel(
    item: mango,
    quantity: 1,
  ),
  CartItemModel(
    item: guava,
    quantity: 3,
  ),
];

UserModel user = UserModel(
  phone: "99 9 99999999",
  cpf: "999.999.999.99",
  email: 'leo@email.com',
  name: "Leonardo Moreira",
  password: '',
);
