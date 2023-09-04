part of 'post_bloc.dart';

@immutable
abstract class PostEvent {

  const PostEvent();
}


class GetPosts extends PostEvent {}


class PostsFinished extends PostEvent {
  final String? message;

  final List<StoryModel>? storyModels;
  const PostsFinished({this.storyModels, this.message});



}


