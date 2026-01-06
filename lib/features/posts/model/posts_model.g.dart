// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reactions _$ReactionsFromJson(Map<String, dynamic> json) => Reactions(
  likes: (json['likes'] as num).toInt(),
  dislikes: (json['dislikes'] as num).toInt(),
);

Map<String, dynamic> _$ReactionsToJson(Reactions instance) => <String, dynamic>{
  'likes': instance.likes,
  'dislikes': instance.dislikes,
};

PostsModel _$PostsModelFromJson(Map<String, dynamic> json) => PostsModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  body: json['body'] as String,
  userId: (json['userId'] as num).toInt(),
  views: (json['views'] as num).toInt(),
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  reactions: Reactions.fromJson(json['reactions'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostsModelToJson(PostsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
      'views': instance.views,
      'tags': instance.tags,
      'reactions': instance.reactions,
    };
