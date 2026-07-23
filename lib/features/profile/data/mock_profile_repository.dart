import 'package:san_dent/features/profile/data/profile_model.dart';

class MockProfileRepository {
  Future<ProfileModel> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return ProfileModel(fullname: 'Doolotbekov Sultan', imagePath: 'assets/images/mock_profile.png', specialization: 'Стоматолог');
  }
}