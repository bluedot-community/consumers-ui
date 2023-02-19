import 'package:json_annotation/json_annotation.dart';

import 'package:consumers_api/consumers_api.dart' as api;

part 'db_data.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'id')
  final String productId;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'manufacturer_ids')
  final List<String>? manufacturerIds;

  Product(
      {required this.productId,
      required this.name,
      required this.description,
      required this.manufacturerIds});

  api.Product toApi() {
    return api.Product(
      productId: productId,
      name: name,
      description: description,
      manufacturerIds: manufacturerIds,
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class Manufacturer {
  @JsonKey(name: 'id')
  final String manufacturerId;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'description')
  final String description;

  Manufacturer(
      {required this.manufacturerId,
      required this.name,
      required this.description});

  api.Manufacturer toApi() {
    return api.Manufacturer(
      manufacturerId: manufacturerId,
      name: name,
      description: description,
    );
  }

  factory Manufacturer.fromJson(Map<String, dynamic> json) =>
      _$ManufacturerFromJson(json);
  Map<String, dynamic> toJson() => _$ManufacturerToJson(this);
}