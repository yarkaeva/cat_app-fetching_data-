import 'package:cat_app/features/cats/domain/entity/breed_list_item.dart';

class BreedListItemModel {
  BreedListItemModel({
    required this.id,
    required this.name,
    required this.origin,
    required this.imageId,
  });

  final String id;
  final String name;
  final String origin;
  final String? imageId;

  factory BreedListItemModel.fromJson(Map<String, dynamic> json) =>
      BreedListItemModel(
        id: json['id'],
        name: json['name'],
        origin: json['origin'],
        imageId: json['reference_image_id'],
      );
  BreedListItem toEntity() => BreedListItem(
        id: id,
        name: name,
        origin: origin,
        imageId: imageId,
      );
}
