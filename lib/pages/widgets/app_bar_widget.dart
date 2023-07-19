import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppBarWidget({Key? key, this.height=60}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Image.asset('assets/images/logo.png'),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.format_list_bulleted_outlined,
            ))
      ],
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(height);
}
