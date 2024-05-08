import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final _auth = FirebaseAuth.instance;

  Future<void> login({required String email, required String password}) async {
    try {
      // Melakukan proses login dengan email dan password
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      // Menangani pengecualian yang berasal dari Firebase Authentication
      throw e.message ?? 'Something went wrong!';
    } catch (e) {
      // Menangani pengecualian umum
      throw e;
    }
  }

  Future<void> register(
      {required String email, required String password}) async {
    try {
      // Melakukan proses pendaftaran dengan email dan password
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      // Menangani pengecualian yang berasal dari Firebase Authentication
      throw e.message ?? 'Something went wrong!';
    } catch (e) {
      // Menangani pengecualian umum
      throw e;
    }
  }
}
