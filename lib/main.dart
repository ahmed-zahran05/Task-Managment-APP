import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'My_App/My_App.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:  const FirebaseOptions(
        apiKey: "AIzaSyBNZrN3nOsP-Rf94ak6uIUGBOgk5h47NSk",
        appId:  "com.example.taskmanagmentgit",
        messagingSenderId: "",
        projectId: "task-management-32642"
    )  ,
  );
  await FirebaseFirestore.instance.disableNetwork();
  runApp(MyApp());
}

