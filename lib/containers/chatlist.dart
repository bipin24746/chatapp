import 'package:chatapp/storyList.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Column(
            children: List.generate(storyList.length, (index) {
              var chats = storyList[index];

              // Check for null values and provide defaults
              String imageUrl = chats["imageUrl"] ?? '';
              String name = chats["name"] ?? 'Unknown';
              String message = chats["message"] ?? '';

              return Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: chats["hasStory"] == true
                          ? Colors.blue
                          : Colors.transparent,
                      child: CircleAvatar(
                        radius: 27,
                        backgroundImage: imageUrl.isNotEmpty
                            ? NetworkImage(imageUrl)
                            : null, // Handle empty image URL
                        child: imageUrl.isEmpty
                            ? Icon(Icons.person,
                                size: 27) // Default icon for empty image
                            : null,
                        onBackgroundImageError: (exception, stackTrace) {
                          print("Error loading image");
                        },
                      ),
                    ),
                    SizedBox(width: 10), // Spacing between avatar and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: chats["isOnline"] == true
                                ? Colors.green
                                : Colors.black,
                          ),
                        ),
                        Text(
                          message,
                        ),
                      ],
                    ),
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
