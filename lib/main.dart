import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:green_loop/app/my_app.dart';
import 'package:green_loop/core/di/dependancy_injection.dart';
import 'package:green_loop/generated/codegen_loader.g.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Supabase.initialize(
    url: "https://sjcgeldfurjvkyjophhy.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNqY2dlbGRmdXJqdmt5am9waGh5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzE3NjY4ODAsImV4cCI6MjA4NzM0Mjg4MH0.o9Olp0z5tL0fA_WBwBNxN5-ZA_TAIQbsmrkF97Y4SoI",
  );
  setupDI();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],

      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      assetLoader: const CodegenLoader(),
      //startLocale: const Locale('ar'),
      child: const MyApp(),
    ),
  );
}
