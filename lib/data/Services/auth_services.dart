import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> createUserWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return cred.user;
    } on FirebaseAuthException catch (e) {
      print('Firebase Auth Exception: $e');
      return null;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<User?> loginUserWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential cred = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return cred.user;
    } on FirebaseAuthException catch (e) {
      print('Firebase Auth Exception: $e');
      return null;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('Error: $e');
    }
  }
}
