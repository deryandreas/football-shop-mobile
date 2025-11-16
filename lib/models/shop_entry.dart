// To parse this JSON data, do
//
//     final shopEntry = shopEntryFromJson(jsonString);

import 'dart:convert';

List<ShopEntry> shopEntryFromJson(String str) => List<ShopEntry>.from(json.decode(str).map((x) => ShopEntry.fromJson(x)));

String shopEntryToJson(List<ShopEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShopEntry {
    String id;
    String name;
    int price;
    String description;
    String thumbnail;
    String category;
    bool isFeatured;
    int stok;
    int productViews;
    String? user;
    int? userOwnerId;
    int diskon;
    DateTime createdAt;

    ShopEntry({
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.thumbnail,
        required this.category,
        required this.isFeatured,
        required this.stok,
        required this.productViews,
        required this.user,
        required this.userOwnerId,
        required this.diskon,
        required this.createdAt,
    });

    factory ShopEntry.fromJson(Map<String, dynamic> json) => ShopEntry(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        category: json["category"],
        isFeatured: json["is_featured"],
        stok: json["stok"],
        productViews: json["product_views"],
        user: json["user"],
        userOwnerId: json["user_owner_id"],
        diskon: json["diskon"],
        createdAt: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "thumbnail": thumbnail,
        "category": category,
        "is_featured": isFeatured,
        "stok": stok,
        "product_views": productViews,
        "user": user,
        "user_owner_id": userOwnerId,
        "diskon": diskon,
        "created_at": createdAt.toIso8601String(),
    };
}
