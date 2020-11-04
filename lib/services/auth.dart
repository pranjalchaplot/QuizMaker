import 'package:firebase_auth/firebase_auth.dart';
import 'package:main/models/users.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Users _userFromFirebaseUser(User user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  Future signInEmailAndPass(String email, String password) async {
    try {
      UserCredential authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User firebaseuser = authResult.user;
      return _userFromFirebaseUser(firebaseuser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signUpWithEmailAndPass(String email, String password) async {
    try {
      UserCredential authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User firebaseuser = authResult.user;
      return _userFromFirebaseUser(firebaseuser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
