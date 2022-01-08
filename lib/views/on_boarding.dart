import 'package:dribble_crypto/views/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Dashboard()),
    );
  }

  Widget _buildImage(String assetName, [double width = 180]) {
    return ClipRRect(
      child: Image.asset('assets/img/material.jpg', width: width),
      borderRadius: BorderRadius.circular(100),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      contentMargin: EdgeInsets.fromLTRB(24.0, 15.0, 24.0, 0.0),
      titleTextStyle: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      isBottomSafeArea: true,
      isTopSafeArea: true,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.center,
        child: SafeArea(
            child: Container(
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.teal, width: 2.0))),
          padding: const EdgeInsets.only(top: 26.0, bottom: 4.0),
          child: const Text(
            'ceisy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        )),
      ),
      globalFooter: Container(
        width: MediaQuery.of(context).size.width * .8,
        height: 60,
        margin: const EdgeInsets.only(bottom: 30.0, top: 20.0),
        child: ElevatedButton(
          child: const Text(
            'create a portfolio',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "cryptocurrency made easy ✌️",
          body:
              "start exploring the crypto currency world now,with our app it's easy and secure",
          image: _buildImage('img1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "cryptocurrency made easy ✌️",
          body:
              "start exploring the crypto currency world now,with our app it's easy and secure",
          image: _buildImage('img1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "cryptocurrency made easy ✌️",
          body:
              "start exploring the crypto currency world now,with our app it's easy and secure",
          image: _buildImage('img1.jpg'),
          decoration: pageDecoration,
        ),
      ],
      showNextButton: false,
      showDoneButton: false,
      onDone: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text(''),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(8.0, 8.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 8.0),
        activeColor: Colors.teal,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
