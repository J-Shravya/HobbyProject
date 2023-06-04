class Cart {
  int count;
  String itemId;
  String itemName;
  int totalQty;
  int price;

  Cart(this.itemId, this.count, this.itemName, this.totalQty, this.price);

  // Food.fromMap(Map<String, dynamic> data) {
  //   displayName = data['displayName'];
  //   email = data['email'];
  //   password = data['password'];
  //   uuid = data['uuid'];
  //   role = data['role'];
  //   balance = data['balance'];
  // }
  // Cart.fromMap(Map<String, dynamic> data) {
  //   count = data['count'];
  //   itemId = data['itemId'];
  //   itemName = data['itemName'];
  //   totalQty = data['totalQty'];
  //   price = data['price'];
  // }
  // Map<String, dynamic> toMapForCart() {
  //   // Map<String, dynamic> map = {};
  //   // map['id'] = itemId;
  //   // map['count'] = 1;
  //   // return map;
  //   return {
  //     'count': count,
  //     'itemId': itemId,
  //     'itemName': itemName,
  //     'totalQty': totalQty,
  //     'price': price
  //   };
  // }
  Map<String, dynamic> toMapForCart() {
    Map<String, dynamic> map = {};
    map['id'] = itemId;
    map['count'] = 1;
    return map;
  }
}
