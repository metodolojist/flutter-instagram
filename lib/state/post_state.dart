part of 'post_bloc.dart';

@immutable
abstract class PostState {}

class PostInitial extends PostState {}

class PostInProgress extends PostState {}

class PostSuccess extends PostState {

  final List<StoryModel> storyModels;

  PostSuccess({required this.storyModels});
}


class PostError extends PostState {
  final String ? message;

  PostError({this.message});



}
