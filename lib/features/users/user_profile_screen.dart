import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text("Jun"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.gear,
                size: Sizes.size20,
              ),
            ),
          ],
        ),
        const SliverToBoxAdapter(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                foregroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/69138182?v=4"),
                child: Text("Jun"),
              ),
              Gaps.v20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "@Jun",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Sizes.size18,
                    ),
                  ),
                  Gaps.h5,
                  FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: Sizes.size16,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
