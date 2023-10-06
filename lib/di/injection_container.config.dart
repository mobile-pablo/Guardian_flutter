// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_drift_1/domain/repository/news_repository_impl.dart'
    as _i10;
import 'package:flutter_drift_1/feature/home/page/home_screen.dart' as _i6;
import 'package:flutter_drift_1/main.dart' as _i8;
import 'package:flutter_drift_1/networking/service/guardian_service.dart'
    as _i4;
import 'package:flutter_drift_1/storage/dao/news_dao.dart' as _i11;
import 'package:flutter_drift_1/storage/dao/news_dao_impl.dart' as _i9;
import 'package:flutter_drift_1/storage/database/app_database.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    // ignore: always_specify_types
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppDatabase>(() => _i3.AppDatabase());
    gh.factory<_i4.GuardianService>(() => _i4.GuardianService(gh<_i5.Dio>()));
    gh.factory<_i6.HomeScreen>(() => _i6.HomeScreen(key: gh<_i7.Key>()));
    gh.factory<_i8.MyApp>(() => _i8.MyApp(key: gh<_i7.Key>()));
    gh.factory<_i9.NewsDaoImpl>(() => _i9.NewsDaoImpl(gh<_i3.AppDatabase>()));
    gh.factory<_i10.NewsRepositoryImpl>(() => _i10.NewsRepositoryImpl(
          gh<_i4.GuardianService>(),
          gh<_i11.NewsDao>(),
        ));
    return this;
  }
}
