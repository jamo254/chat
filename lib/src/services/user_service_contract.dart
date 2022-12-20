import '../models/user.dart';

abstract class IUserService {
  Future<User> connect(User user);
  Future<List<User>> online();
  //disconnecting a particular user
  Future<void> disconnect(User user);
}
