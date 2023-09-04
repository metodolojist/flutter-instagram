// This file is "story_model.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_model.freezed.dart';

part 'story_model.g.dart';

@freezed
class StoryModel with _$StoryModel {
  const factory StoryModel({
    required int albumId,
    required int id,
    required String title,

    required String url,

    required String thumbnailUrl,
  }) = _StoryModel;

  factory StoryModel.fromJson(Map<String, dynamic> json)
  => _$StoryModelFromJson(json);
}