// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../exporter.dart' as _i4;
import '../../feature/login/data/data_source/codonnier_data_source_impl.dart'
    as _i7;
import '../../feature/login/data/repository/codonnier_repository_impl.dart'
    as _i5;
import '../../feature/login/domain/use_case/codonnier_user_case.dart' as _i6;
import '../../feature/login/presentation/bloc/codonnier_login_bloc.dart' as _i3;

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
    gh.lazySingleton<_i3.CodonnierLoginBloc<dynamic>>(
        () => _i3.CodonnierLoginBloc<dynamic>());
    gh.lazySingleton<_i4.CodonnierRepository>(
        () => _i5.CodonnierRepositoryImpl());
    gh.lazySingleton<_i6.CodonnierUserCase>(
        () => _i6.CodonnierUserCase(gh<_i4.CodonnierRepository>()));
    gh.lazySingleton<_i4.CodonnierDataSource>(
        () => _i7.CodonnierDataSourceImpl());
    return this;
  }
}
