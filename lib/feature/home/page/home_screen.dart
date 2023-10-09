import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_drift_1/di/injection_container.dart';
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_bloc.dart';
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_event.dart';
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:injectable/injectable.dart';

@RoutePage()
@injectable
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: always_specify_types
    return BlocProvider(
      create: (_) => getIt<HomeRemoteBloc>()..add(GetHomeNewsEvent()),
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _buildBody(),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Home Screen',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  BlocBuilder<HomeRemoteBloc, HomeRemoteState> _buildBody() {
    return BlocBuilder<HomeRemoteBloc, HomeRemoteState>(
      builder: (_, HomeRemoteState state) {
        if (state is HomeRemoteNewsLoading) {
          return const Center(child: CupertinoActivityIndicator());
        }

        if (state is HomeRemoteNewsError) {
          return Center(child: Text(state.error!.toString()));
        }

        if (state is HomeRemoteNewsDone) {
          return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Text(state.news?[index].id.toString() ?? ''),
            );
          });
        }
        return const SizedBox();
      },
    );
  }
}
