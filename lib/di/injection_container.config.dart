// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:drift/drift.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:guardian_flutter/core/route/app_route.dart' as _i5;
import 'package:guardian_flutter/di/app_module.dart' as _i22;
import 'package:guardian_flutter/domain/repository/news_repository.dart'
    as _i14;
import 'package:guardian_flutter/domain/repository/news_repository_impl.dart'
    as _i15;
import 'package:guardian_flutter/domain/use_cases/get_news_use_case.dart'
    as _i18;
import 'package:guardian_flutter/domain/use_cases/insert_news_item_use_case.dart'
    as _i20;
import 'package:guardian_flutter/domain/use_cases/remove_news_item_use_case.dart'
    as _i16;
import 'package:guardian_flutter/domain/use_cases/update_news_item_use_case.dart'
    as _i17;
import 'package:guardian_flutter/feature/home/bloc/local/home_local_bloc.dart'
    as _i21;
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_bloc.dart'
    as _i19;
import 'package:guardian_flutter/feature/home/page/home_screen.dart' as _i8;
import 'package:guardian_flutter/main.dart' as _i10;
import 'package:guardian_flutter/networking/service/guardian_service.dart'
    as _i7;
import 'package:guardian_flutter/storage/dao/news_dao.dart' as _i12;
import 'package:guardian_flutter/storage/dao/news_dao_impl.dart' as _i13;
import 'package:guardian_flutter/storage/database/app_database.dart' as _i3;
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
    final appModule = _$AppModule();
    gh.factory<_i3.AppDatabase>(
        () => _i3.AppDatabase(gh<_i4.DatabaseConnection>()));
    gh.factory<_i5.AppRouter>(() => _i5.AppRouter());
    gh.factory<_i6.Dio>(() => appModule.dio);
    gh.factory<_i7.GuardianService>(() => _i7.GuardianService(gh<_i6.Dio>()));
    gh.factory<_i8.HomeScreen>(() => _i8.HomeScreen(key: gh<_i9.Key>()));
    gh.factory<_i10.MyApp>(() => _i10.MyApp(key: gh<_i11.Key>()));
    gh.factory<_i12.NewsDao>(() => _i13.NewsDaoImpl(gh<_i3.AppDatabase>()));
    gh.factory<_i14.NewsRepository>(() => _i15.NewsRepositoryImpl(
          gh<_i7.GuardianService>(),
          gh<_i12.NewsDao>(),
        ));
    gh.factory<_i16.RemoveNewsItemUseCase>(
        () => _i16.RemoveNewsItemUseCase(gh<_i14.NewsRepository>()));
    gh.factory<_i17.UpdateNewsItemUseCase>(
        () => _i17.UpdateNewsItemUseCase(gh<_i14.NewsRepository>()));
    gh.factory<_i18.GetNewsUseCase>(
        () => _i18.GetNewsUseCase(gh<_i14.NewsRepository>()));
    gh.factory<_i19.HomeRemoteBloc>(
        () => _i19.HomeRemoteBloc(gh<_i18.GetNewsUseCase>()));
    gh.factory<_i20.InsertNewsItemUseCase>(
        () => _i20.InsertNewsItemUseCase(gh<_i14.NewsRepository>()));
    gh.factory<_i21.HomeLocalBloc>(() => _i21.HomeLocalBloc(
          gh<_i20.InsertNewsItemUseCase>(),
          gh<_i16.RemoveNewsItemUseCase>(),
          gh<_i17.UpdateNewsItemUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i22.AppModule {}
