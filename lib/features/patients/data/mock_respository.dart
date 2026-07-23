import 'package:san_dent/features/patients/data/patient_model.dart';

class MockPatientRepository {
  Future<List<PatientModel>> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      PatientModel(id: '1', fullname: 'John Doe', number: '1234567890'),
      PatientModel(id: '2', fullname: 'Jane Smith', number: '0987654321'),
      PatientModel(id: '3', fullname: 'Bob Johnson', number: '1111111111'),
    ];
  }
}