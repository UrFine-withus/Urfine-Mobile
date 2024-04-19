abstract class ITokenManagerRepo {
  Future saveUser();
  Future saveName();
  Future<bool> getUser();
  Future removeUser();
}
