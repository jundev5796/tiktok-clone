import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/users/widgets/user_count.dart';

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
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                foregroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/69138182?v=4"),
                child: Text("Jun"),
              ),
              Gaps.v20,
              const Row(
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
              Gaps.v24,
              SizedBox(
                height: Sizes.size48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const UserCount(followerCount: "97", text: "Following"),
                    VerticalDivider(
                      width: Sizes.size32,
                      thickness: Sizes.size1,
                      color: Colors.grey.shade400,
                      indent: Sizes.size14,
                      endIndent: Sizes.size14,
                    ),
                    const UserCount(followerCount: "10M", text: "Followers"),
                    VerticalDivider(
                      width: Sizes.size32,
                      thickness: Sizes.size1,
                      color: Colors.grey.shade400,
                      indent: Sizes.size14,
                      endIndent: Sizes.size14,
                    ),
                    const UserCount(followerCount: "194.3M", text: "Likes"),
                  ],
                ),
              ),
              Gaps.v14,
              FractionallySizedBox(
                widthFactor: 0.33,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.size12,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(Sizes.size4),
                    ),
                  ),
                  child: const Text(
                    "Follow",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Gaps.v14,
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.size32,
                ),
                child: Text(
                  "Check out my content and follow my page if you want to support!",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
