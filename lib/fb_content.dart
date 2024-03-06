class FbContentItem {
  final String id;
  final int quantity;

  const FbContentItem({
    required this.id,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantity': quantity,
    };
  }

  factory FbContentItem.fromMap(Map<String, dynamic> map) {
    return FbContentItem(
      id: map['id'],
      quantity: map['quantity'],
    );
  }
}

typedef FbContent = List<FbContentItem>;
