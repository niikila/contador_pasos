import 'package:health/health.dart';

class HealthService {
  final health = HealthFactory();


  Future<int> getStepsLast24Hours() async {
    final now = DateTime.now();
    final yesterday = now.subtract(Duration(hours: 24));

    final types = [HealthDataType.STEPS];
    final permissions = [HealthDataAccess.READ];

    final requested = await health.requestAuthorization(types, permissions: permissions);

    if (!requested) {
      throw Exception("Permisos denegados");
    }

    final steps = await health.getHealthDataFromTypes(
      startTime: yesterday,
      endTime: now,
      types: types,
    );

    int total = 0;
    for (var point in steps) {
      if (point.type == HealthDataType.STEPS && point.value is int) {
        total += point.value as int;
      }
    }

    return total;
  }

  Future<void> requestPermissions() async {
    final types = [HealthDataType.STEPS];
    final permissions = [HealthDataAccess.READ];

    await health.requestAuthorization(types, permissions: permissions);
  }
}

class HealthFactory {
  requestAuthorization(List<HealthDataType> types, {required List<HealthDataAccess> permissions}) {}

  getHealthDataFromTypes({required DateTime startTime, required DateTime endTime, required List<HealthDataType> types}) {}
}
