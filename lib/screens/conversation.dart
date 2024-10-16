import 'package:chatapp/containers/chatlist.dart';
import 'package:chatapp/containers/header.dart';
import 'package:chatapp/containers/profiles.dart';
import 'package:chatapp/containers/search.dart';
import 'package:flutter/material.dart';

class Conversations extends StatefulWidget {
  const Conversations({super.key});

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Header(),
          ),
          Search(),
          Profiles(),
          Expanded(
              child: ChatList())
        ],
      ),
    );
  }
}
