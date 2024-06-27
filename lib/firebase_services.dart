
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices{

  final FirebaseAuth auth =FirebaseAuth.instance;

  Future<User?> signInWithEmailAndPassword(String email,String password)async{
    final auth =FirebaseAuth.instance;
    try{
      UserCredential credential = await auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }catch(e){
      print('error occured');
    }
    return null;
  }

}
