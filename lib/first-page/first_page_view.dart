import 'package:flutter/material.dart';

class FirstPageView extends StatelessWidget {
  const FirstPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          StoryView(),
        ],
      ),
    );
  }
}

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      width: double.infinity,
      color: Colors.green,
      height: 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CircleAvatar(
            child: Icon(
              Icons.account_circle_sharp,
            ),
            radius: 30,
          );
        },
        itemCount: 25,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,

      ),
    );
  }
}
