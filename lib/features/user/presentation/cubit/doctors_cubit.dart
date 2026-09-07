import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/get_user_usecase.dart';

/// Doctors list state machine (`GET users/doctors/`).
@injectable
class DoctorsCubit extends NexoAsyncCubit<List<UserEntity>> {
  DoctorsCubit({required this._getDoctorsUseCase});

  final GetDoctorsUseCase _getDoctorsUseCase;

  @override
  Future<Result<List<UserEntity>>> fetch() =>
      _getDoctorsUseCase(const NoParams());
}
