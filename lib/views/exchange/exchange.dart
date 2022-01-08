import 'package:dribble_crypto/utils/circle_tab_indicator.dart';
import 'package:dribble_crypto/utils/swipeable_button/swipeable_button.dart';
import 'package:dribble_crypto/views/exchange/exc_bank.dart';
import 'package:dribble_crypto/views/exchange/exc_card.dart';
import 'package:dribble_crypto/views/exchange/exc_keypad.dart';
import 'package:dribble_crypto/views/exchange/exc_price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exchange extends StatefulWidget {
  const Exchange({Key? key}) : super(key: key);

  @override
  _ExchangeState createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(child: Container()),
              TabBar(
                labelColor: Colors.grey[800],
                indicatorPadding: EdgeInsets.only(top: 20.0),
                labelStyle: const TextStyle(fontSize: 22.0,),
                controller: _tabController,
                indicator:
                    CircleTabIndicator(color: Colors.teal, radius: 3.0),
                tabs: const [
                  Text(
                    'buy',
                  ),
                  Text('sell')
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const BuyTabView(),
          const SellTabView(),
        ],
      ),
    );
  }
}

class BuyTabView extends StatelessWidget {
  const BuyTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ExcBank(),
          ExcCard(),
          ExcPrice(),
          Expanded(child: ExcKeypad()),
          SwipeableButton(text: 'Some', onSwipeCallback: () {})
        ],
      ),
    );
  }
}

class SellTabView extends StatelessWidget {
  const SellTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
