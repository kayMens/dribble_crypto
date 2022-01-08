// Author: Angga Dwi Arifandi
import 'package:dribble_crypto/utils/swipeable_button/swipeable_widget.dart';
import 'package:flutter/material.dart';

class SwipeableButton extends StatelessWidget {
  const SwipeableButton({Key? key, required this.onSwipeCallback}) : super(key: key);

  /// The callback invoked when the button is swiped.
  final VoidCallback onSwipeCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 60.0,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 20.0),
            child: const Text('slide to buy >', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.white),),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          SwipeableWidget(
            height: 60.0,
            child: Container(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Icon(Icons.swipe, color: Colors.white,),
              ),
              height: 80.0,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15.0)
              ),
            ),
            onSwipeCallback: onSwipeCallback,
          ),
        ],
      ),
    );
  }
}
