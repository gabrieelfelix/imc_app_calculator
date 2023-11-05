import 'package:flutter/material.dart';
import 'package:imc_calculator/provider/imc_manager.dart';
import 'package:imc_calculator/screens/home_page/home_page.dart';
import 'package:provider/provider.dart';
import 'services/local_storage.dart';

void main() async {
  await LocalStorage.createStorage();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ImcManager(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
