import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/router/route_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      context.pushReplacement(RoutePath.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.green,
      height: 400,
      width: 400,
    ));
  }
}
