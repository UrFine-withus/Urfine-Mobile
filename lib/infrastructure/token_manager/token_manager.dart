
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/token_manager/i_token_manager_repo.dart';
import 'package:urfine/domain/token_manager/user_data_model.dart';

@LazySingleton(as: ITokenManagerRepo)
class TokenManagerRepo extends ITokenManagerRepo {
  @override
  Future<bool> getUser() async {
    final sharedPref = await SharedPreferences.getInstance();
    final name = sharedPref.getString('name');
    final uid = sharedPref.getString('uid');
    if (name != null && uid != null) {
      getIt.get<UserDataModel>().name = name;
      getIt.get<UserDataModel>().uid = uid;
      return true;
    }
    return false;
  }

  @override
  Future saveUser() async {
    final uid = getIt.get<UserDataModel>().uid;
    final sharedPref = await SharedPreferences.getInstance();

    sharedPref.setString('uid', uid);
  }

  @override
  Future saveName() async {
    String name = getIt.get<UserDataModel>().name;
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.setString('name', name);
  }

  @override
  Future removeUser() async {
    getIt.get<UserDataModel>().name = '';
    getIt.get<UserDataModel>().uid = '';
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.remove('name');
    sharedPref.remove('uid');
  }
}
