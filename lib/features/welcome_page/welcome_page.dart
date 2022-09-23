import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../home/uis/home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceIn,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.passthrough,
          children: [
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeatherTimelineApp(),
                    ),
                  );
                },
                child: SizedBox(
                  width: 150,
                  child: Image.asset('assets/images/birthday_cake.png'),
                ),
              ),
            ),
            Positioned(
              top: -35,
              left: 10,
              child: SizedBox(
                width: 150,
                child: Lottie.asset('assets/animations/85872-party-ball.json'),
              ),
            ),
            Positioned(
              top: -35,
              left: 10,
              child: SizedBox(
                width: 150,
                child: Lottie.asset(
                    'assets/animations/80557-reward-light-effect.json'),
              ),
            ),
            Positioned(
              top: -70,
              right: -50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeatherTimelineApp(),
                    ),
                  );
                },
                child: SizedBox(
                  width: 300,
                  child: Lottie.asset(
                      'assets/animations/68064-success-celebration.json'),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 150,
                  child: Lottie.asset(
                      'assets/animations/19713-six-pack-beer.json'),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Lottie.asset(
                    'assets/animations/17272-cheers-st-patricks-day.json'),
              ),
            ),
            _buildBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          children: [
            SizedBox(
              height: 500,
              child: Image.asset('assets/images/logo.png'),
            ),
            Positioned(
              top: 150,
              right: 90,
              child: SizedBox(
                height: 110,
                child: Transform.rotate(
                  angle: pi / 5,
                  child:
                      Lottie.asset('assets/animations/37361-birthday-hat.json'),
                ),
              ),
            ),
            Positioned(
              top: 44,
              left: -20,
              child: SizedBox(
                height: 300,
                child:
                    Lottie.asset('assets/animations/10338-happy-birthday.json'),
              ),
            ),
            Positioned(
              top: 84,
              right: 5,
              child: SizedBox(
                height: 130,
                child: Lottie.asset('assets/animations/32322-baloons.json'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
