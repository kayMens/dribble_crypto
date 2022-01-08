import 'package:carousel_slider/carousel_slider.dart';
import 'package:dribble_crypto/components/portfolio_card.dart';
import 'package:dribble_crypto/models/portfolio.dart';
import 'package:flutter/material.dart';

class DashPortfolio extends StatefulWidget {
  const DashPortfolio({Key? key}) : super(key: key);

  @override
  _DashPortfolioState createState() => _DashPortfolioState();
}

class _DashPortfolioState extends State<DashPortfolio> {
  late List<Portfolio> portfolio;
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  void initState() {
    super.initState();
    portfolio = Portfolio.getPortfolio;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              pageSnapping: true,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: portfolio.map((e) => PortfolioCard(e)).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: portfolio.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 5.0,
                  height: 5.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.teal)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
