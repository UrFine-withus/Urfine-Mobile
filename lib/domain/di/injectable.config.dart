// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:urfine/application/add_user_data/add_user_data_bloc.dart'
    as _i19;
import 'package:urfine/application/authentication/authentication_bloc.dart'
    as _i22;
import 'package:urfine/application/dietry_plan_chat/dietry_chat_bloc.dart'
    as _i21;
import 'package:urfine/application/emergency_contacts/emergency_contacts_bloc.dart'
    as _i9;
import 'package:urfine/application/health_logs/health_logs_bloc.dart' as _i20;
import 'package:urfine/application/request_checkup/request_checkup_bloc.dart'
    as _i18;
import 'package:urfine/domain/authentication/i_auth_repo.dart' as _i12;
import 'package:urfine/domain/dietry_plan/i_dietry_plan_repo.dart' as _i3;
import 'package:urfine/domain/emergency/i_emergency_repo.dart' as _i5;
import 'package:urfine/domain/health_logs/i_health_logs_repo.dart' as _i16;
import 'package:urfine/domain/request_checkup/i_request_repo.dart' as _i14;
import 'package:urfine/domain/token_manager/i_token_manager_repo.dart' as _i7;
import 'package:urfine/domain/user_details/i_user_details_repo.dart' as _i10;
import 'package:urfine/infrastructure/authentication/auth_repo.dart' as _i13;
import 'package:urfine/infrastructure/dietry_plan/dietry_plan_repo.dart' as _i4;
import 'package:urfine/infrastructure/emergency/emergency_repo.dart' as _i6;
import 'package:urfine/infrastructure/health_logs_repo/health_logs_repo.dart'
    as _i17;
import 'package:urfine/infrastructure/request_checkup/request_repo.dart'
    as _i15;
import 'package:urfine/infrastructure/token_manager/token_manager.dart' as _i8;
import 'package:urfine/infrastructure/user_details/user_details_repo.dart'
    as _i11;

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
    gh.lazySingleton<_i3.IDietryPlanRepo>(() => _i4.DiertyPlanRepo());
    gh.lazySingleton<_i5.IEmergencyRepo>(() => _i6.EmergencyRepo());
    gh.lazySingleton<_i7.ITokenManagerRepo>(() => _i8.TokenManagerRepo());
    gh.factory<_i9.EmergencyContactsBloc>(
        () => _i9.EmergencyContactsBloc(gh<_i5.IEmergencyRepo>()));
    gh.lazySingleton<_i10.IUserDetailsRepo>(() => _i11.UserDetailsRepo());
    gh.lazySingleton<_i12.IAuthRepo>(() => _i13.AuthRepository());
    gh.lazySingleton<_i14.IRequestRepo>(() => _i15.RequestRepo());
    gh.lazySingleton<_i16.IHealthLogsRepo>(() => _i17.HealthLogsRepo());
    gh.factory<_i18.RequestCheckupBloc>(
        () => _i18.RequestCheckupBloc(gh<_i14.IRequestRepo>()));
    gh.factory<_i19.AddUserDataBloc>(() => _i19.AddUserDataBloc(
          gh<_i10.IUserDetailsRepo>(),
          gh<_i7.ITokenManagerRepo>(),
        ));
    gh.factory<_i20.HealthLogsBloc>(
        () => _i20.HealthLogsBloc(gh<_i16.IHealthLogsRepo>()));
    gh.factory<_i21.DietryChatBloc>(() => _i21.DietryChatBloc(
          gh<_i3.IDietryPlanRepo>(),
          gh<_i10.IUserDetailsRepo>(),
        ));
    gh.factory<_i22.AuthenticationBloc>(() => _i22.AuthenticationBloc(
          gh<_i12.IAuthRepo>(),
          gh<_i7.ITokenManagerRepo>(),
        ));
    return this;
  }
}
