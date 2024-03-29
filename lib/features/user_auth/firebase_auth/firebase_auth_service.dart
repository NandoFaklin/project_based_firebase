import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> singUpWithEmailAndPassword(String email, String password)async{
    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        return credential.user;
    }catch (e){
      print("some eror accured");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential =await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error occured");
    }
    return null;

  }

}