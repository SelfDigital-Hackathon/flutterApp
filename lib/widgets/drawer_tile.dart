import 'package:flutter/material.dart';
import 'package:takeda_hackathon_flutter_app/constants/Theme.dart';

class DrawerTile extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Function? onTap;
  final bool isSelected;
  final Color iconColor;

  const DrawerTile({
    Key? key,
    this.title,
    this.icon,
    this.onTap,
    this.isSelected = false,
    this.iconColor = Colors.black
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap!(),
        child: Container(
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: const EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
                color: isSelected ? MaterialColors.active : Colors.transparent,
                borderRadius: const BorderRadius.all(Radius.circular(4))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Icon(icon,
                      size: 20, color: isSelected ? Colors.white : iconColor),
                ),
                Text(title!,
                    style: TextStyle(
                        fontSize: 15,
                        color: isSelected ? Colors.white : Colors.black))
              ],
            )));
  }
}
