import 'package:flutter/material.dart';

class TableCellSettings extends StatelessWidget {
  final String? title;
  final Function? onTap;
  const TableCellSettings({
    Key? key,
    this.title,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap!(),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title!, style: TextStyle(color: Colors.black)),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child:
              Icon(Icons.arrow_forward_ios, color: Colors.black, size: 14),
            )
          ],
        ),
      ),
    );
  }
}
