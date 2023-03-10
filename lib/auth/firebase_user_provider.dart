import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MyassignFirebaseUser {
  MyassignFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MyassignFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MyassignFirebaseUser> myassignFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MyassignFirebaseUser>(
      (user) {
        currentUser = MyassignFirebaseUser(user);
        return currentUser!;
      },
    );
