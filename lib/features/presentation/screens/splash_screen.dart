import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_clone/features/presentation/screens/bottom_nav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(
          controller: _controller,
          onLoaded: (p0) {
            _controller
              ..duration = p0.duration
              ..forward().whenComplete(() =>  Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => BottomNav()),
            ) ,);
          
          },

          'assets/lotties/youtube_splash_animation.json',
        ),
      ),
    );
  }
}
