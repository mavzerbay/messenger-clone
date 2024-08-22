import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
      ),
    );
  }
}
