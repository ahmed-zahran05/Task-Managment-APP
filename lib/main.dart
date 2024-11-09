import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'My_App/My_App.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}