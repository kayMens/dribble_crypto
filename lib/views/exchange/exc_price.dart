import 'package:flutter/material.dart';

class ExcPrice extends StatelessWidget {
  const ExcPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(text: TextSpan(style: TextStyle(fontFamily: 'Quicksand', color: Colors.grey[800]),children: const [
          TextSpan(text: '200|', style: TextStyle(fontSize: 50.0)),
          TextSpan(text: 'ada', style: TextStyle(fontSize: 30.0))
        ],),),
        Text('408 usd', style: const TextStyle(fontSize: 20.0),)
      ],
    );
  }
}

