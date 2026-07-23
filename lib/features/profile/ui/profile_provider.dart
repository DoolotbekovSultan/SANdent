import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:san_dent/features/profile/data/mock_profile_repository.dart';
import 'package:san_dent/features/profile/data/profile_model.dart';

final mockProfileRepositoryProvider = Provider((ref) => MockProfileRepository());

final profileNotifier = AsyncNotifierProvider<ProfileNotifier, ProfileModel>(() => ProfileNotifier());

class ProfileNotifier extends AsyncNotifier<ProfileModel> {
  @override
  FutureOr<ProfileModel> build() async {
    final repository = ref.watch(mockProfileRepositoryProvider);
    return await repository.fetchData();
  }
}