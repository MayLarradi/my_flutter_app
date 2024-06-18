import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).indicatorColor,
          ],
        ),
      ),
      child: const Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              "images/profile.jpeg",
            ),
            radius: 50,
          )
        ],
      ),
    );
  }
}
