class FbContentItem {
  final String id;
  final int quantity;
  final double? price;
  final String? name;

  const FbContentItem({
    required this.id,
    required this.quantity,
    this.price,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantity': quantity,
      if (price != null) 'price': price,
      if (name != null) 'name': name,
    };
  }

  factory FbContentItem.fromMap(Map<String, dynamic> map) {
    return FbContentItem(
      id: map['id'],
      quantity: map['quantity'],
      price: map['price'],
      name: map['name'],
    );
  }
}

typedef FbContent = List<FbContentItem>;
