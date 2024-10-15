import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        
        child: Row(
          children: [
            Column(
              children: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Text(
                    "Chats",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            Spacer(),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.pen,
                    size: 20,
                    
                  ),
                  
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
