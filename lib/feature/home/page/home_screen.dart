import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_drift_1/di/injection_container.dart';
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_bloc.dart';
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_event.dart';
import 'package:injectable/injectable.dart';

@RoutePage()
@injectable
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeRemoteBloc>(
        create: (BuildContext context) =>
            sl()..add(GetHomeNewsEvent(query: 'Flutter')),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('HomeScreen'),
          ),
          body: Container(
            color: Colors.pink,
          ),
        ));
  }
}
