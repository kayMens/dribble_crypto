import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class ExcKeypad extends StatefulWidget {
  const ExcKeypad({Key? key}) : super(key: key);

  @override
  _ExcKeypadState createState() => _ExcKeypadState();
}

class _ExcKeypadState extends State<ExcKeypad> {
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: NumericKeyboard(
        onKeyboardTap: _onKeyboardTap,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        textColor: Colors.grey,
        rightButtonFn: () {
          setState(() {
            text = text.substring(0, text.length - 1);
          });
        },
        rightIcon: const Icon(
          Icons.backspace,
          color: Colors.grey,
        ),
        leftButtonFn: () {
          print('left button clicked');
        },
        leftIcon: Icon(
          Icons.check,
          color: Colors.grey,
        ),
      ),
    );
  }
}

