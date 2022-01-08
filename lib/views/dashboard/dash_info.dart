import 'package:flutter/material.dart';

class DashInfo extends StatelessWidget {
  const DashInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'total balance',
          style: TextStyle(color: Colors.grey[400], fontSize: 16.0),
        ),
        Text(
          "\$16,722.68",
          style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 40.0),
        ),
        const Text(
          '\$5,772.91.126%',
          style: TextStyle(color: Colors.teal, fontSize: 18.0),
        )
      ],
    );
  }
}
