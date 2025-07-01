import 'package:flutter/material.dart';
import '../services/health_service.dart';

class StepsViewModel extends ChangeNotifier {
  final HealthService _healthService = HealthService();
  int _steps = 0;

  int get steps => _steps;

  Future<void> loadSteps() async {
    try {
      await _healthService.requestPermissions();
      _steps = await _healthService.getStepsLast24Hours();
      notifyListeners();
    } catch (e) {
      print('Erro ao carregar passos: $e');
    }
  }
}
