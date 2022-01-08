import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExcBank extends StatelessWidget {
  const ExcBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text('bank card', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600], fontSize: 18.0),),
        ),
        TextFormField(
          readOnly: true,
          showCursor: true,
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 18.0),
          decoration: InputDecoration(
            hintText: '*7490',
            prefixIcon: Image.asset('assets/img/mastercard.png'),
            suffixText: 'change',
            fillColor: Colors.grey[200],
            filled: true,
            contentPadding: const EdgeInsets.all(12.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide.none),
          ),
        )
      ],
    );
  }
}

