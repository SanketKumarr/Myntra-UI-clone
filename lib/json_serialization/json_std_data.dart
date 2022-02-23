class Data {
  static List<Item> items = [];
}

class Item {

  final String imgUrl;
  final String name;

  Item(this.imgUrl, this.name);

  Item.fromJson(Map<String, dynamic> json)
  : imgUrl = json['imgUrl'],
  name = json['name'];

  Map<String, dynamic> toJson() => {
    'imgUrl': imgUrl,
    'name': name,
  };
}
