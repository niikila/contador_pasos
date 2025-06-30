import 'package:flutter/material.dart';
import '../services/health_service.dart';

class StepsViewModel extends ChangeNotifier {
  final _service = HealthService();
  int _steps = 0;

  int get steps => _steps;

  Future<void> loadSteps() async {
    await _service.requestPermissions();
    _steps = await _service.getStepsLast24Hours();
    notifyListeners();
  }
}
