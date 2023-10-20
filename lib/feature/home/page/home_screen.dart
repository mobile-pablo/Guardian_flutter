import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_bloc.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_event.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_state.dart';
import 'package:guardian_flutter/feature/home/widgets/news_item_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:guardian_flutter/feature/home/wrapper/home_item_wrapper.dart';
import 'package:injectable/injectable.dart';

@RoutePage()
@injectable
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeRemoteBloc>(
      create: (_) => getIt<HomeRemoteBloc>()..add(GetHomeNewsEvent()),
      child: Localizations(
        locale: const Locale('en', 'US'),
        delegates: const <LocalizationsDelegate<dynamic>>[
          DefaultWidgetsLocalizations.delegate,
          DefaultMaterialLocalizations.delegate,
        ],
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: _buildBody(),
          ),
        ),
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
          if (state.news == null) {
            return const SizedBox();
          }
          return ListView.builder(
              itemCount: state.news!.length,
              itemBuilder: (BuildContext context, int index) {
                NewsItemDTO item = state.news![index];
                HomeItemWrapper homeItemWrapper = HomeItemWrapper(
                  item.webTitle,
                  item.thumbnail,
                  item.trailText,
                  item.webUrl,
                );
                return Center(
                  child: NewsItemWidget(wrapper: homeItemWrapper),
                );
              });
        }
        return const SizedBox();
      },
    );
  }
}
