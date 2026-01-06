import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.3,
          height: 1.9,
          color: Colors.black,
        ),
        const SizedBox(width: 12),
        const Text('or', style: TextStyle(color: Colors.black, fontSize: 17)),
        const SizedBox(width: 12),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.3,
          height: 1.9,
          color: Colors.black,
        ),
      ],
    );
  }
}
