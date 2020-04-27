import 'package:firebase_auth/firebase_auth.dart';
import 'package:getout/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // FirebaseUSer to User class

  User firebaseUserToUser(FirebaseUser user)
  {
    return  user != null ? User(uid : user.uid) : null;
  }

  //signIN anonymous
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return firebaseUserToUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }

    //signIN email & password

    //register email & password

    //signOut
  }
}
