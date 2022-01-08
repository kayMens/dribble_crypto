import 'package:flutter/material.dart';

class ExcCard extends StatelessWidget {
  const ExcCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text('cryptocurrency', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600], fontSize: 18.0),),
        ),
        DropdownButtonFormField(
          style: const TextStyle(fontSize: 18.0),
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.strikethrough_s),
            fillColor: Colors.grey[200],
            filled: true,
            contentPadding: const EdgeInsets.all(12.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide.none),
          ), items: const [
            DropdownMenuItem(child: Text('cardano', style: TextStyle(color: Colors.grey, fontFamily: "Quicksand"),))
        ],
        )
      ],
    );
  }
}

