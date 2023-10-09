// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter_drift_1/core/route/app_route.dart' as _i4;
import 'package:flutter_drift_1/domain/repository/news_repository_impl.dart'
    as _i12;
import 'package:flutter_drift_1/domain/use_cases/get_news_use_case.dart'
    as _i15;
import 'package:flutter_drift_1/domain/use_cases/insert_news_item_use_case.dart'
    as _i17;
import 'package:flutter_drift_1/domain/use_cases/remove_news_item_use_case.dart'
    as _i13;
import 'package:flutter_drift_1/domain/use_cases/update_news_item_use_case.dart'
    as _i14;
import 'package:flutter_drift_1/feature/home/bloc/local/home_local_bloc.dart'
    as _i18;
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_bloc.dart'
    as _i16;
import 'package:flutter_drift_1/feature/home/page/home_screen.dart' as _i7;
import 'package:flutter_drift_1/main.dart' as _i9;
import 'package:flutter_drift_1/networking/service/guardian_service.dart'
    as _i5;
import 'package:flutter_drift_1/storage/dao/news_dao_impl.dart' as _i11;
import 'package:flutter_drift_1/storage/database/app_database.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppDatabase>(() => _i3.AppDatabase());
    gh.factory<_i4.AppRouter>(() => _i4.AppRouter());
    gh.factory<_i5.GuardianService>(() => _i5.GuardianService(gh<_i6.Dio>()));
    gh.factory<_i7.HomeScreen>(() => _i7.HomeScreen(key: gh<_i8.Key>()));
    gh.factory<_i9.MyApp>(() => _i9.MyApp(key: gh<_i10.Key>()));
    gh.factory<_i11.NewsDaoImpl>(() => _i11.NewsDaoImpl(gh<_i3.AppDatabase>()));
    gh.factory<_i12.NewsRepositoryImpl>(() => _i12.NewsRepositoryImpl(
          gh<_i5.GuardianService>(),
          gh<_i11.NewsDaoImpl>(),
        ));
    gh.factory<_i13.RemoveNewsItemUseCase>(
        () => _i13.RemoveNewsItemUseCase(gh<_i12.NewsRepositoryImpl>()));
    gh.factory<_i14.UpdateNewsItemUseCase>(
        () => _i14.UpdateNewsItemUseCase(gh<_i12.NewsRepositoryImpl>()));
    gh.factory<_i15.GetNewsUseCase>(
        () => _i15.GetNewsUseCase(gh<_i12.NewsRepositoryImpl>()));
    gh.factory<_i16.HomeRemoteBloc>(
        () => _i16.HomeRemoteBloc(gh<_i15.GetNewsUseCase>()));
    gh.factory<_i17.InsertNewsItemUseCase>(
        () => _i17.InsertNewsItemUseCase(gh<_i12.NewsRepositoryImpl>()));
    gh.factory<_i18.HomeLocalBloc>(() => _i18.HomeLocalBloc(
          gh<_i17.InsertNewsItemUseCase>(),
          gh<_i13.RemoveNewsItemUseCase>(),
          gh<_i14.UpdateNewsItemUseCase>(),
        ));
    return this;
  }
}
