// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:drift/drift.dart' as _i12;
import 'package:flutter/cupertino.dart' as _i10;
import 'package:flutter/material.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:guardian_flutter/core/route/app_route.dart' as _i4;
import 'package:guardian_flutter/di/app_module.dart' as _i26;
import 'package:guardian_flutter/domain/repository/news_repository.dart'
    as _i18;
import 'package:guardian_flutter/domain/repository/news_repository_impl.dart'
    as _i19;
import 'package:guardian_flutter/domain/use_cases/get_news_use_case.dart'
    as _i22;
import 'package:guardian_flutter/domain/use_cases/insert_news_item_use_case.dart'
    as _i24;
import 'package:guardian_flutter/domain/use_cases/remove_news_item_use_case.dart'
    as _i20;
import 'package:guardian_flutter/domain/use_cases/update_news_item_use_case.dart'
    as _i21;
import 'package:guardian_flutter/feature/home/bloc/local/home_local_bloc.dart'
    as _i25;
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_bloc.dart'
    as _i23;
import 'package:guardian_flutter/feature/home/page/home_screen.dart' as _i9;
import 'package:guardian_flutter/main.dart' as _i13;
import 'package:guardian_flutter/networking/service/guardian_service.dart'
    as _i6;
import 'package:guardian_flutter/networking/service/guardian_service_impl.dart'
    as _i7;
import 'package:guardian_flutter/networking/service/guardian_service_mock.dart'
    as _i8;
import 'package:guardian_flutter/storage/dao/news_dao.dart' as _i15;
import 'package:guardian_flutter/storage/dao/news_dao_impl.dart' as _i16;
import 'package:guardian_flutter/storage/dao/news_dao_mock.dart' as _i17;
import 'package:guardian_flutter/storage/database/app_database.dart' as _i3;
import 'package:guardian_flutter/storage/database/app_database_mock.dart'
    as _i11;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';

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
    gh.factory<_i3.AppDatabase>(() => _i3.AppDatabase());
    gh.factory<_i4.AppRouter>(() => _i4.AppRouter());
    gh.factory<_i5.Dio>(() => appModule.dio);
    gh.factory<_i6.GuardianService>(
      () => _i7.GuardianServiceImpl(gh<_i5.Dio>()),
      registerFor: {
        _prod,
        _dev,
      },
    );
    gh.factory<_i6.GuardianService>(
      () => _i8.GuardianServiceMock(),
      registerFor: {_test},
    );
    gh.factory<_i9.HomeScreen>(() => _i9.HomeScreen(key: gh<_i10.Key>()));
    gh.factory<_i11.MockAppDatabase>(
      () => _i11.MockAppDatabase(gh<_i12.QueryExecutor>()),
      registerFor: {_test},
    );
    gh.factory<_i13.MyApp>(() => _i13.MyApp(key: gh<_i14.Key>()));
    gh.factory<_i15.NewsDao>(
      () => _i16.NewsDaoImpl(gh<_i3.AppDatabase>()),
      registerFor: {
        _prod,
        _dev,
      },
    );
    gh.factory<_i15.NewsDao>(
      () => _i17.NewsDaoMock(),
      registerFor: {_test},
    );
    gh.factory<_i18.NewsRepository>(() => _i19.NewsRepositoryImpl(
          gh<_i6.GuardianService>(),
          gh<_i15.NewsDao>(),
        ));
    gh.factory<_i20.RemoveNewsItemUseCase>(
        () => _i20.RemoveNewsItemUseCase(gh<_i18.NewsRepository>()));
    gh.factory<_i21.UpdateNewsItemUseCase>(
        () => _i21.UpdateNewsItemUseCase(gh<_i18.NewsRepository>()));
    gh.factory<_i22.GetNewsUseCase>(
        () => _i22.GetNewsUseCase(gh<_i18.NewsRepository>()));
    gh.factory<_i23.HomeRemoteBloc>(
        () => _i23.HomeRemoteBloc(gh<_i22.GetNewsUseCase>()));
    gh.factory<_i24.InsertNewsItemUseCase>(
        () => _i24.InsertNewsItemUseCase(gh<_i18.NewsRepository>()));
    gh.factory<_i25.HomeLocalBloc>(() => _i25.HomeLocalBloc(
          gh<_i24.InsertNewsItemUseCase>(),
          gh<_i20.RemoveNewsItemUseCase>(),
          gh<_i21.UpdateNewsItemUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i26.AppModule {}
