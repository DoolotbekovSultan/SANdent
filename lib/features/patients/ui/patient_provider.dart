import 'package:riverpod/riverpod.dart';
import 'package:san_dent/features/patients/data/mock_respository.dart';
import 'package:san_dent/features/patients/data/patient_model.dart';

final mockPatientRepositoryProvider = Provider((ref) {
  return MockPatientRepository();
});

final patientsProvider = AsyncNotifierProvider<PatientsNotifier, List<PatientModel>>(() {
  return PatientsNotifier();
});

class PatientsNotifier extends AsyncNotifier<List<PatientModel>> {
  @override
  Future<List<PatientModel>> build() async {
    final repository = ref.watch(mockPatientRepositoryProvider);
    return await repository.fetchData ();
  }
}