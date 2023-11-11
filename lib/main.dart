import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todoapp/view/list_page.dart';
import 'package:todoapp/view/login_page.dart';
import 'package:todoapp/view/signup_page.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://xyzcompany.supabase.co',
    anonKey: 'public-anon-key',
  );

  runApp(const MaterialApp(home: listPage()));
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;
