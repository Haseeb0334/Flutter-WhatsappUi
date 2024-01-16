import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/home.dart';

void main() {
  runApp(const Whatsapp());
}

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: Home(),

    );
  }
}

