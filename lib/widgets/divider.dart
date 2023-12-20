import 'package:flutter/material.dart';
import 'package:lexis_best_app/datenspeicher/styles.dart';

class MyDividerWithIcons extends StatelessWidget {
  const MyDividerWithIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 320,
          child: Divider(
            color: backgroundGrey,
            height: 20,
            thickness: 2,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.pets, size: 20, color: lexiBrown),
            SizedBox(width: 10),
            Icon(Icons.pets, size: 20, color: lexiBrown),
            SizedBox(width: 10),
            Icon(Icons.pets, size: 20, color: lexiBrown),
          ],
        ),
        SizedBox(
          width: 320,
          child: Divider(
            color: backgroundGrey,
            height: 20,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
