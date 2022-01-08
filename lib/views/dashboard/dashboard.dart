import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dash_assets.dart';
import 'dash_info.dart';
import 'dash_portfolio.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.menu),
                    label: const Text(
                      'transactions',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  VerticalDivider(),
                  TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.notifications_none),
                    label: const Text(
                      'notifications',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const SingleChildScrollView(
            padding: EdgeInsets.only(top: 40.0), child: DashboardPage()),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          elevation: 0.0,
          iconSize: 24.0,
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey[300],
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: (index) {
            if(index == 2 ){
              Navigator.pushNamed(context, '/exchange');
            }
          },
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 40.0,
                width: 40.0,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                decoration: ShapeDecoration(
                  color: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DashInfo(),
        DashPortfolio(),
        DashAssets(),
      ],
    );
  }
}
