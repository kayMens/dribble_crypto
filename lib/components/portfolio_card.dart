import 'package:dribble_crypto/models/portfolio.dart';
import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  final Portfolio portfolio;

  const PortfolioCard(this.portfolio, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: portfolio.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Header(),
            Expanded(child: Body(portfolio)),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: '🤞', // emoji characters
                ),
                TextSpan(
                  text: 'holding portfolio', // non-emoji characters
                ),
              ],
            ),
          ),
        ),
        const Icon(
          Icons.more_vert,
          color: Colors.white,
        )
      ],
    );
  }
}

class Body extends StatelessWidget {
  final Portfolio portfolio;

  const Body(this.portfolio, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              portfolio.value,
              style: const TextStyle(
                  fontSize: 26.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              portfolio.percentage,
              style: const TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ],
        ),
        Expanded(
            child: Image.asset(
          'assets/img/chart.png',
          height: 60.0,
          width: double.infinity,
          fit: BoxFit.fill,
        ))
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                icon: Container(
                  padding: const EdgeInsets.all(4.0),
                  child: const Icon(
                    Icons.add,
                    size: 16.0,
                  ),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white10),
                ),
                label: const Text('buy'),
              ),
              TextButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                icon: Container(
                  padding: const EdgeInsets.all(4.0),
                  child: const Icon(
                    Icons.remove,
                    size: 16.0,
                  ),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white10),
                ),
                label: const Text('sell'),
              ),
            ],
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
          icon: Container(
            padding: const EdgeInsets.all(4.0),
            child: const Icon(
              Icons.arrow_forward,
              size: 16.0,
            ),
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white10),
          ),
          label: const Text('send'),
        ),
      ],
    );
  }
}
