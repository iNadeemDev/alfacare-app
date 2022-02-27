import 'package:flutter/material.dart';

class UserAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Smart Health Care System'),
      backgroundColor: Colors.purple.shade900,
      centerTitle: true,
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
      ],
      // actions: const [Icon(Icons.shopping_cart)],
      toolbarHeight: 70,
    );
  }
}
