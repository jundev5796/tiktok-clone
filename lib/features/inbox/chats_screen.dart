import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();

  void _addItem() {
    if (_key.currentState != null) {
      _key.currentState!.insertItem(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text("Direct Messages"),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const FaIcon(
              FontAwesomeIcons.plus,
            ),
          ),
        ],
      ),
      body: AnimatedList(
        key: _key,
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size10,
        ),
        itemBuilder: (context, index, animation) {
          return FadeTransition(
            opacity: animation,
            child: ListTile(
              key: UniqueKey(),
              leading: const CircleAvatar(
                radius: 30,
                foregroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/69138182?v=4",
                ),
                child: Text("Jun"),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Nico ($index)",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "2:16 PM",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: Sizes.size12,
                    ),
                  ),
                ],
              ),
              subtitle: const Text("Hi! Nice to meet you!"),
            ),
          );
        },
      ),
    );
  }
}
