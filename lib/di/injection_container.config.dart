// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i10;
import 'package:guardian_flutter/core/route/app_route.dart' as _i4;
import 'package:guardian_flutter/di/app_module.dart' as _i21;
import 'package:guardian_flutter/domain/repository/news_repository.dart' as _i13;
import 'package:guardian_flutter/domain/repository/news_repository_impl.dart'
    as _i14;
import 'package:guardian_flutter/domain/use_cases/get_news_use_case.dart'
    as _i17;
import 'package:guardian_flutter/domain/use_cases/insert_news_item_use_case.dart'
    as _i19;
import 'package:guardian_flutter/domain/use_cases/remove_news_item_use_case.dart'
    as _i15;
import 'package:guardian_flutter/domain/use_cases/update_news_item_use_case.dart'
    as _i16;
import 'package:guardian_flutter/feature/home/bloc/local/home_local_bloc.dart'
    as _i20;
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_bloc.dart'
    as _i18;
import 'package:guardian_flutter/feature/home/page/home_screen.dart' as _i7;
import 'package:guardian_flutter/main.dart' as _i9;
import 'package:guardian_flutter/networking/service/guardian_service.dart'
    as _i6;
import 'package:guardian_flutter/storage/dao/news_dao.dart' as _i11;
import 'package:guardian_flutter/storage/dao/news_dao_impl.dart' as _i12;
import 'package:guardian_flutter/storage/database/app_database.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final _i2.GetItHelper gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final _$AppModule appModule = _$AppModule();
    gh.factory<_i3.AppDatabase>(() => _i3.AppDatabase());
    gh.factory<_i4.AppRouter>(() => _i4.AppRouter());
    gh.factory<_i5.Dio>(() => appModule.dio);
    gh.factory<_i6.GuardianService>(() => _i6.GuardianService(gh<_i5.Dio>()));
    gh.factory<_i7.HomeScreen>(() => _i7.HomeScreen(key: gh<_i8.Key>()));
    gh.factory<_i9.MyApp>(() => _i9.MyApp(key: gh<_i10.Key>()));
    gh.factory<_i11.NewsDao>(() => _i12.NewsDaoImpl(gh<_i3.AppDatabase>()));
    gh.factory<_i13.NewsRepository>(() => _i14.NewsRepositoryImpl(
          gh<_i6.GuardianService>(),
          gh<_i11.NewsDao>(),
        ));
    gh.factory<_i15.RemoveNewsItemUseCase>(
        () => _i15.RemoveNewsItemUseCase(gh<_i13.NewsRepository>()));
    gh.factory<_i16.UpdateNewsItemUseCase>(
        () => _i16.UpdateNewsItemUseCase(gh<_i13.NewsRepository>()));
    gh.factory<_i17.GetNewsUseCase>(
        () => _i17.GetNewsUseCase(gh<_i13.NewsRepository>()));
    gh.factory<_i18.HomeRemoteBloc>(
        () => _i18.HomeRemoteBloc(gh<_i17.GetNewsUseCase>()));
    gh.factory<_i19.InsertNewsItemUseCase>(
        () => _i19.InsertNewsItemUseCase(gh<_i13.NewsRepository>()));
    gh.factory<_i20.HomeLocalBloc>(() => _i20.HomeLocalBloc(
          gh<_i19.InsertNewsItemUseCase>(),
          gh<_i15.RemoveNewsItemUseCase>(),
          gh<_i16.UpdateNewsItemUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i21.AppModule {}
