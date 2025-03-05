import 'package:ecommerce_app/Module/Login/Provider/login_provider.dart';
import 'package:ecommerce_app/Module/Login/View/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Supabase.initialize(
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlmdGJvYnhycmh1bHRleG5nZ3R2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDExNjMyODcsImV4cCI6MjA1NjczOTI4N30.XnR7mZsAQ1N30IHfndz2e8jzjsebeut1XFLcl_vcF9w',
    url: 'https://yftbobxrrhultexnggtv.supabase.co',
  );
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => LoginScreen(),
        },
      ),
    );
  }
}



//database password : RJBzYlEwYHdglOYn