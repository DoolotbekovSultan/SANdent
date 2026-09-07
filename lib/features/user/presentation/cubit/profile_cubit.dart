import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/parameters/user_params.dart';
import '../../domain/usecases/user_usecases.dart';

/// Current-user profile state machine (`GET/PATCH /me/`).
@injectable
class ProfileCubit extends NexoAsyncCubit<UserEntity> {
  ProfileCubit({
    required this._getMeUseCase,
    required this._updateMeUseCase,
    required this._changePasswordUseCase,
  });

  final GetMeUseCase _getMeUseCase;
  final UpdateMeUseCase _updateMeUseCase;
  final ChangePasswordUseCase _changePasswordUseCase;

  @override
  Future<Result<UserEntity>> fetch() => _getMeUseCase(const NoParams());

  /// Updates profile fields, then emits the fresh user.
  Future<bool> updateProfile(UpdateUserParams params) async {
    if (isClosed) return false;
    emit(const NexoAsyncLoading());
    final result = await _updateMeUseCase(params);
    if (isClosed) return false;
    switch (result) {
      case Left(:final failure):
        onFailure?.call(failure);
        emit(NexoAsyncFailure<UserEntity>(failure));
        return false;
      case Right(:final value):
        emit(NexoAsyncSuccess<UserEntity>(value));
        return true;
    }
  }

  Future<bool> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    if (isClosed) return false;
    final result = await _changePasswordUseCase(
      ChangePasswordParams(
        oldPassword: oldPassword,
        newPassword: newPassword,
      ),
    );
    if (isClosed) return false;
    switch (result) {
      case Left(:final failure):
        onFailure?.call(failure);
        return false;
      case Right():
        return true;
    }
  }
}
