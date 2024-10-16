import 'package:chatapp/storyList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_backspace),
            ),
            Expanded(
              child: Row(
                children: List.generate(1, (index) {
                  var profiles = storyList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: profiles["hasStory"]
                          ? Colors.blue
                          : Colors.transparent,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(profiles["imageUrl"]),
                        onBackgroundImageError: (exception, stackTrace) {
                          print("Error loading image: $exception");
                        },
                      ),
                    ),
                  );
                }),
              ),
              
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.call,
                        size: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        CupertinoIcons.video_camera_solid,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.info),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
