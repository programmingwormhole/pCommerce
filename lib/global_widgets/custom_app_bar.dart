import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? hideLeading;
  final String? title;

  const CustomAppBar({
    super.key,
    this.hideLeading,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      centerTitle: false,
      leading: hideLeading == true
          ? null
          : IconButton(
              onPressed: () => Get.back(),
              icon: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).canvasColor,
                    width: 1,
                  )
                ),
                child: const Center(
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
      title: title == null
          ? null
          : Text(
              title ?? '',
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
