import 'package:chatapp/storyList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profiles extends StatelessWidget {
  const Profiles({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Center(
                  child: Icon(
                    CupertinoIcons.plus,
                    size: 35,
                  ),
                ),
              ),
              SizedBox(
                width: 75,
                child: Align(
                  child: Text(
                    "Your Story",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10, // Changed from height to width to space between columns
          ),
          Row(
            children: List.generate(storyList.length, (index) {
              var story = storyList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 5.0), // Optional padding between stories
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor:
                          story["hasStory"] ? Colors.blue : Colors.transparent,
                      child: CircleAvatar(
                        radius: 27,
                        backgroundImage: NetworkImage(story["imageUrl"]),
                        onBackgroundImageError: (exception, stackTrace) {
                          print("error loading image");
                        },
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      width: 75,
                      child: Align(
                        child: Text(
                          story["name"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: story["isOnline"]
                                  ? Colors.green
                                  : Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
