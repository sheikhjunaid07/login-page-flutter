class CatalogModel{
  static var items = <Item>[Item(id: 101, name: "Sheikh Junaid", city: "Nepanagar", imgUrl: 'https://images.unsplash.com/photo-1474176857210-7287d38d27c6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fHVzZXJ8ZW58MHx8MHx8fDA%3D',  )];
}

class Item{
  final num id;
  final String name;
  final String city;
  final String imgUrl;

  Item({required this.id, required this.name, required this.city, required this.imgUrl});

  factory Item.fromMap(Map<String, dynamic> map){
      return Item(
        id: map["id"],
        name: map["name"],
        city: map["city"],
        imgUrl: map["imgUrl"]
      );
  }
}

