import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewsmodel/pasos_viewmodel.dart';
import 'view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StepsViewModel>(
      create: (_) => StepsViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contador de Passos',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
