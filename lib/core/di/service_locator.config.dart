// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/home/data/data_sources/local/home_data_source.dart'
    as _i778;
import '../../features/home/data/data_sources/local/home_data_source_impl.dart'
    as _i864;
import '../../features/home/data/repositroy_imp/home_repository_impl.dart'
    as _i81;
import '../../features/home/domain/repository/home_repository.dart' as _i541;
import '../../features/home/domain/usecase/get_data_use_case.dart' as _i724;
import '../../features/home/presentation/view_model/cubit/home_cubit.dart'
    as _i1039;
import '../../features/login/presentation/view_model/cubit/login_cubit.dart'
    as _i753;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i753.LoginCubit>(() => _i753.LoginCubit());
    gh.factory<_i778.HomeDataSource>(() => _i864.HomeDataSourceImpl());
    gh.factory<_i541.HomeRepository>(
        () => _i81.HomeRepositoryImpl(gh<_i778.HomeDataSource>()));
    gh.factory<_i724.GetDataUseCase>(
        () => _i724.GetDataUseCase(gh<_i541.HomeRepository>()));
    gh.factory<_i1039.HomeCubit>(
        () => _i1039.HomeCubit(gh<_i724.GetDataUseCase>()));
    return this;
  }
}
