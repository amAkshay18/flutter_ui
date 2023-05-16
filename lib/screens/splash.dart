import 'package:flutter/material.dart';
import 'home_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    start();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png'),
      ),
    );
  }

  Future<void> start() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    ));
  }
}
