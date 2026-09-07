import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/clinic_entity.dart';
import '../../domain/usecases/clinic_usecases.dart';

/// Clinics list state machine.
@injectable
class ClinicCubit extends NexoAsyncCubit<List<ClinicEntity>> {
  ClinicCubit({required this._getClinicsUseCase});

  final GetClinicsUseCase _getClinicsUseCase;

  @override
  Future<Result<List<ClinicEntity>>> fetch() async {
    final result = await _getClinicsUseCase(1);
    switch (result) {
      case Left(:final failure):
        return Left(failure);
      case Right(:final value):
        return Right(value.items);
    }
  }
}
