import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<AuthResponse> signInWithEmailAndPassword(String email,String password)
  async {
    return await supabase.auth.signInWithPassword(password: password,email: email);
  }

  Future<AuthResponse> signUpWithEmailAndPassword(String email,String password)
  async {
    return await supabase.auth.signUp(password: password,email: email);
  }

  Future<void> signOut()
  async{
    await supabase.auth.signOut();
  }

  String? getCurrentUser()
  {
    return supabase.auth.currentUser?.email;
  }
}