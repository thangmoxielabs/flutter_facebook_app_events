class FbContentItem {
  final String id;
  final int quantity;
  final Map<String, dynamic>? parameters;

  const FbContentItem({
    required this.id,
    required this.quantity,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantity': quantity,
      ...parameters ?? {},
    };
  }

  factory FbContentItem.fromMap(Map<String, dynamic> map) {
    return FbContentItem(
      id: map['id'],
      quantity: map['quantity'],
      parameters: map
        ..removeWhere((key, value) => ['id', 'quantity'].contains(key)),
    );
  }
}

typedef FbContent = List<FbContentItem>;
