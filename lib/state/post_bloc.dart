import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import '../models/story_model.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<GetPosts>(onGetPosts);

    on<PostsFinished>(onPostsFinished);
  }

  var http = Client();

  void getPosts() async {
    Uri url = Uri.https("jsonplaceholder.typicode.com", "photos");

    add(GetPosts());

    try {
      var response = await http.get(url);

      var json = jsonDecode(utf8.decode(response.bodyBytes)) as List;

      List<StoryModel> storyModels =
          json.map((e) => StoryModel.fromJson(e)).toList();

      add(PostsFinished(storyModels: storyModels));
    } catch (e) {
      add(PostsFinished(message: e.toString()));
    }
  }

  void onGetPosts(
    PostEvent event,
    Emitter<PostState> emit,
  ) async {
    emit(PostInProgress());
  }
}

void onPostsFinished(
  PostsFinished event,
  Emitter<PostState> emit,
) {
  if (event.message == null) {
    emit(PostSuccess(storyModels: event.storyModels!));
  } else {
    emit(PostError(message: event.message));
  }
}
