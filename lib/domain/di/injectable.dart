import 'package:urfine/domain/di/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureInjuction() async {
  getIt.init(environment: Environment.prod);
}


//command for build runner 
//flutter pub run build_runner watch --delete-conflicting-outputs