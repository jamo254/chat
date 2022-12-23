// @ 2.9
import 'package:chat/src/models/user.dart';
import 'package:chat/src/services/user_service_impl.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rethinkdb_dart/rethinkdb_dart.dart';

import 'helpers.dart';

void main() {
  Rethinkdb r = Rethinkdb();
  Connection connection;
  UserService sut;

  setUp(() async {
    connection = await r.connect(host: "127.0.01", port: 28015);
    await createDb(r, connection);
    sut = UserService(r, connection);
  });

  tearDown(() async {
    // await cleanDb(r, connection);
  });
// Creating a test user
  test('create a new user in user', () async {
    final user = User(
      username: 'test1',
      photoUrl: 'url',
      active: true,
      lastseen: DateTime.now(),
    );
    final userWithId = await sut.connect(user);
    expect(userWithId.id, isNotEmpty);
  });
}
