import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

@RoutePage()
@injectable
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Container(
        color: Colors.pink,
      ),
    );
  }
}
