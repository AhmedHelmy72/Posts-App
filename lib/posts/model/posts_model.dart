import 'package:json_annotation/json_annotation.dart';

part 'posts_model.g.dart';

/// Reactions Model
@JsonSerializable()
class Reactions {
  final int likes;
  final int dislikes;

  Reactions({
    required this.likes,
    required this.dislikes,
  });

  factory Reactions.fromJson(Map<String, dynamic> json) =>
      _$ReactionsFromJson(json);

  Map<String, dynamic> toJson() => _$ReactionsToJson(this);
}
///Posts Model
@JsonSerializable()
class PostsModel {
  final int id;
  final String title;
  final String body;
  final int userId;
  final int views;

  @JsonKey(defaultValue: [])
  final List<String> tags;

  final Reactions reactions;

  PostsModel({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    required this.views,
    required this.tags,
    required this.reactions,
  });

  factory PostsModel.fromJson(Map<String, dynamic> json) =>
      _$PostsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostsModelToJson(this);
}
