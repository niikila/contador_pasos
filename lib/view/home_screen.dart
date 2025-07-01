import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewsmodel/pasos_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<StepsViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Contador de Passos')),
      body: Center(
        child: viewModel.steps == 0
            ? ElevatedButton(
          onPressed: () async {
            print("Botón presionado");
            await viewModel.loadSteps();
            print("Pasos cargados: ${viewModel.steps}");
          },
          child: const Text('Carregar passos'),
            )
            : Text(
          'Passos nas últimas 24h:\n${viewModel.steps}',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
