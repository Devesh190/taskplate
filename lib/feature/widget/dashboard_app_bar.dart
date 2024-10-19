import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      title: const Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/images.jpg'),
            radius: 30,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              Text(
                "Devesh",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              )
            ],
          )
        ],
      ),
      actions: const [
        badges.Badge(
          badgeContent: Text('3'),
          child: Icon(
            Icons.notifications_none_outlined,
            size: 40,
          ),
        ),
        SizedBox(width: 10)
      ],
    );
  }
}

