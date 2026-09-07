// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nexo/nexo.dart' as _i294;
import 'package:nexo/nexo_core.dart' as _i702;
import 'package:nexo/nexo_logger.dart' as _i170;
import 'package:san_dent/core/di/modules/logger_module.dart' as _i847;
import 'package:san_dent/core/di/modules/network_module.dart' as _i351;
import 'package:san_dent/core/di/modules/storage_module.dart' as _i764;
import 'package:san_dent/core/network/auth_interceptor_bindings.dart' as _i523;
import 'package:san_dent/features/appointment/data/datasources/appointment_remote_datasource.dart'
    as _i368;
import 'package:san_dent/features/appointment/data/datasources/i_remote_appointment_data_source.dart'
    as _i545;
import 'package:san_dent/features/appointment/data/datasources/mock_appointment_remote_data_source.dart'
    as _i546;
import 'package:san_dent/features/appointment/data/repositories/appointment_repository.dart'
    as _i930;
import 'package:san_dent/features/appointment/domain/repositories/i_appointment_repository.dart'
    as _i828;
import 'package:san_dent/features/appointment/domain/usecases/appointment_usecases.dart'
    as _i905;
import 'package:san_dent/features/appointment/domain/usecases/get_appointment_usecase.dart'
    as _i543;
import 'package:san_dent/features/appointment/presentation/cubit/appointment_cubit.dart'
    as _i164;
import 'package:san_dent/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i238;
import 'package:san_dent/features/auth/data/datasources/i_local_auth_data_source.dart'
    as _i375;
import 'package:san_dent/features/auth/data/datasources/i_remote_auth_data_source.dart'
    as _i877;
import 'package:san_dent/features/auth/data/datasources/mock_auth_remote_data_source.dart'
    as _i549;
import 'package:san_dent/features/auth/data/datasources/secure_storage_auth_local_data_source.dart'
    as _i490;
import 'package:san_dent/features/auth/data/repositories/auth_repository.dart'
    as _i772;
import 'package:san_dent/features/auth/domain/repositories/i_auth_repository.dart'
    as _i557;
import 'package:san_dent/features/auth/domain/usecases/auth_usecases.dart'
    as _i65;
import 'package:san_dent/features/auth/domain/usecases/login_usecase.dart'
    as _i486;
import 'package:san_dent/features/auth/domain/usecases/registration_usecases.dart'
    as _i405;
import 'package:san_dent/features/auth/domain/usecases/restore_session_usecase.dart'
    as _i467;
import 'package:san_dent/features/auth/presentation/cubit/auth_cubit.dart'
    as _i827;
import 'package:san_dent/features/clinic/data/datasources/clinic_remote_datasource.dart'
    as _i646;
import 'package:san_dent/features/clinic/data/datasources/i_remote_clinic_data_source.dart'
    as _i1060;
import 'package:san_dent/features/clinic/data/datasources/mock_clinic_remote_data_source.dart'
    as _i885;
import 'package:san_dent/features/clinic/data/repositories/clinic_repository.dart'
    as _i147;
import 'package:san_dent/features/clinic/domain/repositories/i_clinic_repository.dart'
    as _i852;
import 'package:san_dent/features/clinic/domain/usecases/clinic_usecases.dart'
    as _i393;
import 'package:san_dent/features/clinic/domain/usecases/get_clinic_usecase.dart'
    as _i316;
import 'package:san_dent/features/clinic/presentation/cubit/clinic_cubit.dart'
    as _i819;
import 'package:san_dent/features/dashboard/data/datasources/dashboard_remote_datasource.dart'
    as _i176;
import 'package:san_dent/features/dashboard/data/datasources/i_remote_dashboard_data_source.dart'
    as _i376;
import 'package:san_dent/features/dashboard/data/datasources/mock_dashboard_remote_data_source.dart'
    as _i466;
import 'package:san_dent/features/dashboard/data/repositories/dashboard_repository.dart'
    as _i701;
import 'package:san_dent/features/dashboard/domain/repositories/i_dashboard_repository.dart'
    as _i304;
import 'package:san_dent/features/dashboard/domain/usecases/get_dashboard_usecase.dart'
    as _i1047;
import 'package:san_dent/features/dashboard/presentation/cubit/dashboard_cubit.dart'
    as _i555;
import 'package:san_dent/features/material/data/datasources/i_remote_material_data_source.dart'
    as _i300;
import 'package:san_dent/features/material/data/datasources/material_remote_datasource.dart'
    as _i1072;
import 'package:san_dent/features/material/data/datasources/mock_material_remote_data_source.dart'
    as _i780;
import 'package:san_dent/features/material/data/repositories/material_repository.dart'
    as _i55;
import 'package:san_dent/features/material/domain/repositories/i_material_repository.dart'
    as _i608;
import 'package:san_dent/features/material/domain/usecases/get_material_usecase.dart'
    as _i91;
import 'package:san_dent/features/material/domain/usecases/material_usecases.dart'
    as _i567;
import 'package:san_dent/features/material/presentation/cubit/material_cubit.dart'
    as _i320;
import 'package:san_dent/features/material_transaction/data/datasources/i_remote_material_transaction_data_source.dart'
    as _i223;
import 'package:san_dent/features/material_transaction/data/datasources/material_transaction_remote_datasource.dart'
    as _i860;
import 'package:san_dent/features/material_transaction/data/datasources/mock_material_transaction_remote_data_source.dart'
    as _i633;
import 'package:san_dent/features/material_transaction/data/repositories/material_transaction_repository.dart'
    as _i293;
import 'package:san_dent/features/material_transaction/domain/repositories/i_material_transaction_repository.dart'
    as _i559;
import 'package:san_dent/features/material_transaction/domain/usecases/material_transaction_usecases.dart'
    as _i477;
import 'package:san_dent/features/material_transaction/presentation/cubit/material_transaction_cubit.dart'
    as _i168;
import 'package:san_dent/features/medical_record/data/datasources/i_remote_medical_record_data_source.dart'
    as _i786;
import 'package:san_dent/features/medical_record/data/datasources/medical_record_remote_datasource.dart'
    as _i588;
import 'package:san_dent/features/medical_record/data/datasources/mock_medical_record_remote_data_source.dart'
    as _i257;
import 'package:san_dent/features/medical_record/data/repositories/medical_record_repository.dart'
    as _i163;
import 'package:san_dent/features/medical_record/domain/repositories/i_medical_record_repository.dart'
    as _i776;
import 'package:san_dent/features/medical_record/domain/usecases/medical_record_usecases.dart'
    as _i596;
import 'package:san_dent/features/medical_record/presentation/cubit/medical_record_cubit.dart'
    as _i209;
import 'package:san_dent/features/medical_record/presentation/cubit/patient_history_cubit.dart'
    as _i937;
import 'package:san_dent/features/notification/data/datasources/i_remote_notification_data_source.dart'
    as _i473;
import 'package:san_dent/features/notification/data/datasources/mock_notification_remote_data_source.dart'
    as _i484;
import 'package:san_dent/features/notification/data/datasources/notification_remote_datasource.dart'
    as _i106;
import 'package:san_dent/features/notification/data/repositories/notification_repository.dart'
    as _i983;
import 'package:san_dent/features/notification/domain/repositories/i_notification_repository.dart'
    as _i298;
import 'package:san_dent/features/notification/domain/usecases/notification_usecases.dart'
    as _i914;
import 'package:san_dent/features/notification/presentation/cubit/notification_cubit.dart'
    as _i357;
import 'package:san_dent/features/patient/data/datasources/i_remote_patient_data_source.dart'
    as _i97;
import 'package:san_dent/features/patient/data/datasources/mock_patient_remote_data_source.dart'
    as _i601;
import 'package:san_dent/features/patient/data/datasources/patient_remote_datasource.dart'
    as _i818;
import 'package:san_dent/features/patient/data/repositories/patient_repository.dart'
    as _i916;
import 'package:san_dent/features/patient/domain/repositories/i_patient_repository.dart'
    as _i248;
import 'package:san_dent/features/patient/domain/usecases/get_patient_by_id_usecase.dart'
    as _i148;
import 'package:san_dent/features/patient/domain/usecases/get_patient_usecase.dart'
    as _i739;
import 'package:san_dent/features/patient/domain/usecases/patient_usecases.dart'
    as _i515;
import 'package:san_dent/features/patient/presentation/cubit/patient_cubit.dart'
    as _i551;
import 'package:san_dent/features/patient/presentation/cubit/patient_statistics_cubit.dart'
    as _i318;
import 'package:san_dent/features/patient_document/data/datasources/i_remote_patient_document_data_source.dart'
    as _i461;
import 'package:san_dent/features/patient_document/data/datasources/mock_patient_document_remote_data_source.dart'
    as _i752;
import 'package:san_dent/features/patient_document/data/datasources/patient_document_remote_datasource.dart'
    as _i598;
import 'package:san_dent/features/patient_document/data/repositories/patient_document_repository.dart'
    as _i731;
import 'package:san_dent/features/patient_document/domain/repositories/i_patient_document_repository.dart'
    as _i195;
import 'package:san_dent/features/patient_document/domain/usecases/get_patient_document_by_id_usecase.dart'
    as _i956;
import 'package:san_dent/features/patient_document/domain/usecases/get_patient_document_usecase.dart'
    as _i183;
import 'package:san_dent/features/patient_document/domain/usecases/patient_document_usecases.dart'
    as _i969;
import 'package:san_dent/features/patient_document/presentation/cubit/patient_document_cubit.dart'
    as _i262;
import 'package:san_dent/features/procedure/data/datasources/i_remote_procedure_data_source.dart'
    as _i197;
import 'package:san_dent/features/procedure/data/datasources/mock_procedure_remote_data_source.dart'
    as _i865;
import 'package:san_dent/features/procedure/data/datasources/procedure_remote_datasource.dart'
    as _i408;
import 'package:san_dent/features/procedure/data/repositories/procedure_repository.dart'
    as _i645;
import 'package:san_dent/features/procedure/domain/repositories/i_procedure_repository.dart'
    as _i372;
import 'package:san_dent/features/procedure/domain/usecases/get_procedure_usecase.dart'
    as _i798;
import 'package:san_dent/features/procedure/domain/usecases/procedure_usecases.dart'
    as _i432;
import 'package:san_dent/features/procedure/presentation/cubit/procedure_cubit.dart'
    as _i179;
import 'package:san_dent/features/procedure_category/data/datasources/i_remote_procedure_category_data_source.dart'
    as _i718;
import 'package:san_dent/features/procedure_category/data/datasources/mock_procedure_category_remote_data_source.dart'
    as _i650;
import 'package:san_dent/features/procedure_category/data/datasources/procedure_category_remote_datasource.dart'
    as _i483;
import 'package:san_dent/features/procedure_category/data/repositories/procedure_category_repository.dart'
    as _i574;
import 'package:san_dent/features/procedure_category/domain/repositories/i_procedure_category_repository.dart'
    as _i913;
import 'package:san_dent/features/procedure_category/domain/usecases/procedure_category_usecases.dart'
    as _i181;
import 'package:san_dent/features/procedure_category/presentation/cubit/procedure_category_cubit.dart'
    as _i939;
import 'package:san_dent/features/report/data/datasources/i_remote_report_data_source.dart'
    as _i856;
import 'package:san_dent/features/report/data/datasources/mock_report_remote_data_source.dart'
    as _i568;
import 'package:san_dent/features/report/data/datasources/report_remote_datasource.dart'
    as _i619;
import 'package:san_dent/features/report/data/repositories/report_repository.dart'
    as _i116;
import 'package:san_dent/features/report/domain/repositories/i_report_repository.dart'
    as _i1002;
import 'package:san_dent/features/report/domain/usecases/report_usecases.dart'
    as _i965;
import 'package:san_dent/features/report/presentation/cubit/report_cubits.dart'
    as _i714;
import 'package:san_dent/features/user/data/datasources/i_remote_user_data_source.dart'
    as _i938;
import 'package:san_dent/features/user/data/datasources/mock_user_remote_data_source.dart'
    as _i529;
import 'package:san_dent/features/user/data/datasources/user_remote_datasource.dart'
    as _i597;
import 'package:san_dent/features/user/data/repositories/user_repository.dart'
    as _i1054;
import 'package:san_dent/features/user/domain/repositories/i_user_repository.dart'
    as _i124;
import 'package:san_dent/features/user/domain/usecases/get_user_usecase.dart'
    as _i808;
import 'package:san_dent/features/user/domain/usecases/user_usecases.dart'
    as _i988;
import 'package:san_dent/features/user/presentation/cubit/doctors_cubit.dart'
    as _i231;
import 'package:san_dent/features/user/presentation/cubit/profile_cubit.dart'
    as _i912;
import 'package:san_dent/features/user/presentation/cubit/stats_cubit.dart'
    as _i636;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:talker/talker.dart' as _i993;

const String _mock = 'mock';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final storageModule = _$StorageModule();
    final loggerModule = _$LoggerModule();
    final networkModule = _$NetworkModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => storageModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i993.Talker>(() => loggerModule.talker);
    gh.lazySingleton<_i294.NexoCrashReporter>(
      () => loggerModule.nexoCrashReporter(),
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => storageModule.secureStorage,
    );
    gh.lazySingleton<_i197.IRemoteProcedureDataSource>(
      () => _i865.MockProcedureRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i718.IRemoteProcedureCategoryDataSource>(
      () => _i650.MockProcedureCategoryRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i300.IRemoteMaterialDataSource>(
      () => _i780.MockMaterialRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i97.IRemotePatientDataSource>(
      () => _i601.MockPatientRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i938.IRemoteUserDataSource>(
      () => _i529.MockUserRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i461.IRemotePatientDocumentDataSource>(
      () => _i752.MockPatientDocumentRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i856.IRemoteReportDataSource>(
      () => _i568.MockReportRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i376.IRemoteDashboardDataSource>(
      () => _i466.MockDashboardRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i1060.IRemoteClinicDataSource>(
      () => _i885.MockClinicRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i786.IRemoteMedicalRecordDataSource>(
      () => _i257.MockMedicalRecordRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i473.IRemoteNotificationDataSource>(
      () => _i484.MockNotificationRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i545.IRemoteAppointmentDataSource>(
      () => _i546.MockAppointmentRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i877.IRemoteAuthDataSource>(
      () => _i549.MockAuthRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i223.IRemoteMaterialTransactionDataSource>(
      () => _i633.MockMaterialTransactionRemoteDataSource(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i294.TalkerLoggerAdapter>(
      () => loggerModule.talkerLoggerAdapter(gh<_i993.Talker>()),
    );
    gh.lazySingleton<_i294.NexoLogger>(
      () => loggerModule.nexoLogger(gh<_i294.TalkerLoggerAdapter>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.authDio(gh<_i294.NexoLogger>()),
      instanceName: 'auth',
    );
    gh.lazySingleton<_i294.DioClient>(
      () => networkModule.authDioClient(gh<_i361.Dio>(instanceName: 'auth')),
      instanceName: 'auth',
    );
    gh.lazySingleton<_i523.AuthInterceptorBindings>(
      () => _i523.AuthInterceptorBindings(
        gh<_i558.FlutterSecureStorage>(),
        authClient: gh<_i702.DioClient>(instanceName: 'auth'),
      ),
    );
    gh.lazySingleton<_i375.ILocalAuthDataSource>(
      () => _i490.SecureStorageAuthLocalDataSource(
        gh<_i523.AuthInterceptorBindings>(),
      ),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.dio(
        gh<_i294.NexoLogger>(),
        gh<_i523.AuthInterceptorBindings>(),
      ),
    );
    gh.lazySingleton<_i294.DioClient>(
      () => networkModule.dioClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i97.IRemotePatientDataSource>(
      () => _i818.PatientRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i473.IRemoteNotificationDataSource>(
      () => _i106.NotificationRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i300.IRemoteMaterialDataSource>(
      () => _i1072.MaterialRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i938.IRemoteUserDataSource>(
      () => _i597.UserRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i718.IRemoteProcedureCategoryDataSource>(
      () => _i483.ProcedureCategoryRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i376.IRemoteDashboardDataSource>(
      () => _i176.DashboardRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i248.IPatientRepository>(
      () => _i916.PatientRepository(
        remoteDatasource: gh<_i97.IRemotePatientDataSource>(),
      ),
    );
    gh.lazySingleton<_i786.IRemoteMedicalRecordDataSource>(
      () => _i588.MedicalRecordRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i461.IRemotePatientDocumentDataSource>(
      () => _i598.PatientDocumentRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i856.IRemoteReportDataSource>(
      () => _i619.ReportRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i124.IUserRepository>(
      () => _i1054.UserRepository(
        remoteDatasource: gh<_i938.IRemoteUserDataSource>(),
      ),
    );
    gh.lazySingleton<_i1060.IRemoteClinicDataSource>(
      () => _i646.ClinicRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i808.GetUsersUseCase>(
      () => _i808.GetUsersUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i808.GetDoctorsUseCase>(
      () => _i808.GetDoctorsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i808.GetUserByIdUseCase>(
      () => _i808.GetUserByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i988.CreateUserUseCase>(
      () => _i988.CreateUserUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i988.UpdateUserUseCase>(
      () => _i988.UpdateUserUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i988.DeleteUserUseCase>(
      () => _i988.DeleteUserUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i988.SetClinicUseCase>(
      () => _i988.SetClinicUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i988.GetMeUseCase>(
      () => _i988.GetMeUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i988.UpdateMeUseCase>(
      () => _i988.UpdateMeUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i988.ChangePasswordUseCase>(
      () => _i988.ChangePasswordUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.factory<_i988.GetStatsUseCase>(
      () => _i988.GetStatsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i124.IUserRepository>(),
      ),
    );
    gh.lazySingleton<_i776.IMedicalRecordRepository>(
      () => _i163.MedicalRecordRepository(
        remoteDatasource: gh<_i786.IRemoteMedicalRecordDataSource>(),
      ),
    );
    gh.lazySingleton<_i195.IPatientDocumentRepository>(
      () => _i731.PatientDocumentRepository(
        remoteDatasource: gh<_i461.IRemotePatientDocumentDataSource>(),
      ),
    );
    gh.lazySingleton<_i545.IRemoteAppointmentDataSource>(
      () => _i368.AppointmentRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i912.ProfileCubit>(
      () => _i912.ProfileCubit(
        getMeUseCase: gh<_i988.GetMeUseCase>(),
        updateMeUseCase: gh<_i988.UpdateMeUseCase>(),
        changePasswordUseCase: gh<_i988.ChangePasswordUseCase>(),
      ),
    );
    gh.lazySingleton<_i223.IRemoteMaterialTransactionDataSource>(
      () => _i860.MaterialTransactionRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i636.StatsCubit>(
      () => _i636.StatsCubit(useCase: gh<_i988.GetStatsUseCase>()),
    );
    gh.lazySingleton<_i197.IRemoteProcedureDataSource>(
      () => _i408.ProcedureRemoteDataSource(
        client: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i608.IMaterialRepository>(
      () => _i55.MaterialRepository(
        remoteDatasource: gh<_i300.IRemoteMaterialDataSource>(),
      ),
    );
    gh.lazySingleton<_i559.IMaterialTransactionRepository>(
      () => _i293.MaterialTransactionRepository(
        remoteDatasource: gh<_i223.IRemoteMaterialTransactionDataSource>(),
      ),
    );
    gh.lazySingleton<_i298.INotificationRepository>(
      () => _i983.NotificationRepository(
        remoteDatasource: gh<_i473.IRemoteNotificationDataSource>(),
      ),
    );
    gh.lazySingleton<_i877.IRemoteAuthDataSource>(
      () => _i238.AuthRemoteDataSource(
        authClient: gh<_i702.DioClient>(instanceName: 'auth'),
        authedClient: gh<_i702.DioClient>(),
        logger: gh<_i170.NexoLogger>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i596.GetMedicalRecordsUseCase>(
      () => _i596.GetMedicalRecordsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.factory<_i596.GetMedicalRecordByIdUseCase>(
      () => _i596.GetMedicalRecordByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.factory<_i596.CreateMedicalRecordUseCase>(
      () => _i596.CreateMedicalRecordUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.factory<_i596.UpdateMedicalRecordUseCase>(
      () => _i596.UpdateMedicalRecordUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.factory<_i596.DeleteMedicalRecordUseCase>(
      () => _i596.DeleteMedicalRecordUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.factory<_i596.AddRecordProcedureUseCase>(
      () => _i596.AddRecordProcedureUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.factory<_i596.AddRecordMaterialUseCase>(
      () => _i596.AddRecordMaterialUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.factory<_i596.RemoveRecordProcedureUseCase>(
      () => _i596.RemoveRecordProcedureUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.factory<_i596.RemoveRecordMaterialUseCase>(
      () => _i596.RemoveRecordMaterialUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.factory<_i596.GetPatientHistoryUseCase>(
      () => _i596.GetPatientHistoryUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i776.IMedicalRecordRepository>(),
      ),
    );
    gh.lazySingleton<_i852.IClinicRepository>(
      () => _i147.ClinicRepository(
        remoteDatasource: gh<_i1060.IRemoteClinicDataSource>(),
      ),
    );
    gh.factory<_i914.GetNotificationsUseCase>(
      () => _i914.GetNotificationsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i298.INotificationRepository>(),
      ),
    );
    gh.factory<_i914.MarkNotificationsReadUseCase>(
      () => _i914.MarkNotificationsReadUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i298.INotificationRepository>(),
      ),
    );
    gh.factory<_i914.MarkAllNotificationsReadUseCase>(
      () => _i914.MarkAllNotificationsReadUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i298.INotificationRepository>(),
      ),
    );
    gh.factory<_i914.DeleteNotificationUseCase>(
      () => _i914.DeleteNotificationUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i298.INotificationRepository>(),
      ),
    );
    gh.factory<_i956.GetPatientDocumentByIdUseCase>(
      () => _i956.GetPatientDocumentByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i195.IPatientDocumentRepository>(),
      ),
    );
    gh.factory<_i183.GetPatientDocumentUseCase>(
      () => _i183.GetPatientDocumentUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i195.IPatientDocumentRepository>(),
      ),
    );
    gh.factory<_i969.DeletePatientDocumentUseCase>(
      () => _i969.DeletePatientDocumentUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i195.IPatientDocumentRepository>(),
      ),
    );
    gh.factory<_i969.UploadPatientDocumentUseCase>(
      () => _i969.UploadPatientDocumentUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i195.IPatientDocumentRepository>(),
      ),
    );
    gh.lazySingleton<_i557.IAuthRepository>(
      () => _i772.AuthRepository(
        remoteDatasource: gh<_i877.IRemoteAuthDataSource>(),
        local: gh<_i375.ILocalAuthDataSource>(),
      ),
    );
    gh.factory<_i262.PatientDocumentCubit>(
      () => _i262.PatientDocumentCubit(
        getDocumentsUseCase: gh<_i183.GetPatientDocumentUseCase>(),
        deleteDocumentUseCase: gh<_i969.DeletePatientDocumentUseCase>(),
      ),
    );
    gh.factory<_i209.MedicalRecordCubit>(
      () => _i209.MedicalRecordCubit(
        getRecordsUseCase: gh<_i596.GetMedicalRecordsUseCase>(),
      ),
    );
    gh.lazySingleton<_i372.IProcedureRepository>(
      () => _i645.ProcedureRepository(
        remoteDatasource: gh<_i197.IRemoteProcedureDataSource>(),
      ),
    );
    gh.lazySingleton<_i1002.IReportRepository>(
      () => _i116.ReportRepository(
        remoteDatasource: gh<_i856.IRemoteReportDataSource>(),
      ),
    );
    gh.factory<_i965.GetFinancialReportUseCase>(
      () => _i965.GetFinancialReportUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i1002.IReportRepository>(),
      ),
    );
    gh.factory<_i965.GetDoctorsReportUseCase>(
      () => _i965.GetDoctorsReportUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i1002.IReportRepository>(),
      ),
    );
    gh.factory<_i965.GetPatientsReportUseCase>(
      () => _i965.GetPatientsReportUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i1002.IReportRepository>(),
      ),
    );
    gh.factory<_i965.GetMaterialsReportUseCase>(
      () => _i965.GetMaterialsReportUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i1002.IReportRepository>(),
      ),
    );
    gh.factory<_i965.GetAppointmentsReportUseCase>(
      () => _i965.GetAppointmentsReportUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i1002.IReportRepository>(),
      ),
    );
    gh.lazySingleton<_i913.IProcedureCategoryRepository>(
      () => _i574.ProcedureCategoryRepository(
        remoteDatasource: gh<_i718.IRemoteProcedureCategoryDataSource>(),
      ),
    );
    gh.factory<_i148.GetPatientByIdUseCase>(
      () => _i148.GetPatientByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i248.IPatientRepository>(),
      ),
    );
    gh.factory<_i739.GetPatientsUseCase>(
      () => _i739.GetPatientsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i248.IPatientRepository>(),
      ),
    );
    gh.factory<_i739.SearchPatientsUseCase>(
      () => _i739.SearchPatientsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i248.IPatientRepository>(),
      ),
    );
    gh.factory<_i515.CreatePatientUseCase>(
      () => _i515.CreatePatientUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i248.IPatientRepository>(),
      ),
    );
    gh.factory<_i515.UpdatePatientUseCase>(
      () => _i515.UpdatePatientUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i248.IPatientRepository>(),
      ),
    );
    gh.factory<_i515.DeletePatientUseCase>(
      () => _i515.DeletePatientUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i248.IPatientRepository>(),
      ),
    );
    gh.factory<_i515.GetPatientStatisticsUseCase>(
      () => _i515.GetPatientStatisticsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i248.IPatientRepository>(),
      ),
    );
    gh.factory<_i515.GetPatientStatsUseCase>(
      () => _i515.GetPatientStatsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i248.IPatientRepository>(),
      ),
    );
    gh.factory<_i318.PatientStatisticsCubit>(
      () => _i318.PatientStatisticsCubit(
        useCase: gh<_i515.GetPatientStatisticsUseCase>(),
      ),
    );
    gh.factory<_i231.DoctorsCubit>(
      () =>
          _i231.DoctorsCubit(getDoctorsUseCase: gh<_i808.GetDoctorsUseCase>()),
    );
    gh.lazySingleton<_i304.IDashboardRepository>(
      () => _i701.DashboardRepository(
        remoteDatasource: gh<_i376.IRemoteDashboardDataSource>(),
      ),
    );
    gh.factory<_i477.GetAllMaterialTransactionsUseCase>(
      () => _i477.GetAllMaterialTransactionsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i559.IMaterialTransactionRepository>(),
      ),
    );
    gh.factory<_i477.GetMaterialTransactionByIdUseCase>(
      () => _i477.GetMaterialTransactionByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i559.IMaterialTransactionRepository>(),
      ),
    );
    gh.factory<_i477.CreateMaterialTransactionUseCase>(
      () => _i477.CreateMaterialTransactionUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i559.IMaterialTransactionRepository>(),
      ),
    );
    gh.factory<_i477.UpdateMaterialTransactionUseCase>(
      () => _i477.UpdateMaterialTransactionUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i559.IMaterialTransactionRepository>(),
      ),
    );
    gh.factory<_i477.DeleteMaterialTransactionUseCase>(
      () => _i477.DeleteMaterialTransactionUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i559.IMaterialTransactionRepository>(),
      ),
    );
    gh.factory<_i937.PatientHistoryCubit>(
      () => _i937.PatientHistoryCubit(
        getHistoryUseCase: gh<_i596.GetPatientHistoryUseCase>(),
      ),
    );
    gh.factory<_i798.GetProceduresUseCase>(
      () => _i798.GetProceduresUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i372.IProcedureRepository>(),
      ),
    );
    gh.factory<_i798.GetProcedureByIdUseCase>(
      () => _i798.GetProcedureByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i372.IProcedureRepository>(),
      ),
    );
    gh.factory<_i432.CreateProcedureUseCase>(
      () => _i432.CreateProcedureUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i372.IProcedureRepository>(),
      ),
    );
    gh.factory<_i432.UpdateProcedureUseCase>(
      () => _i432.UpdateProcedureUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i372.IProcedureRepository>(),
      ),
    );
    gh.factory<_i432.DeleteProcedureUseCase>(
      () => _i432.DeleteProcedureUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i372.IProcedureRepository>(),
      ),
    );
    gh.factory<_i432.BulkCreateProceduresUseCase>(
      () => _i432.BulkCreateProceduresUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i372.IProcedureRepository>(),
      ),
    );
    gh.factory<_i432.GetProcedureStatsUseCase>(
      () => _i432.GetProcedureStatsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i372.IProcedureRepository>(),
      ),
    );
    gh.factory<_i714.DoctorsReportCubit>(
      () => _i714.DoctorsReportCubit(
        useCase: gh<_i965.GetDoctorsReportUseCase>(),
      ),
    );
    gh.factory<_i357.NotificationCubit>(
      () => _i357.NotificationCubit(
        getNotificationsUseCase: gh<_i914.GetNotificationsUseCase>(),
        markReadUseCase: gh<_i914.MarkNotificationsReadUseCase>(),
        markAllReadUseCase: gh<_i914.MarkAllNotificationsReadUseCase>(),
      ),
    );
    gh.factory<_i91.GetMaterialsUseCase>(
      () => _i91.GetMaterialsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i608.IMaterialRepository>(),
      ),
    );
    gh.factory<_i91.GetMaterialByIdUseCase>(
      () => _i91.GetMaterialByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i608.IMaterialRepository>(),
      ),
    );
    gh.factory<_i567.CreateMaterialUseCase>(
      () => _i567.CreateMaterialUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i608.IMaterialRepository>(),
      ),
    );
    gh.factory<_i567.UpdateMaterialUseCase>(
      () => _i567.UpdateMaterialUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i608.IMaterialRepository>(),
      ),
    );
    gh.factory<_i567.DeleteMaterialUseCase>(
      () => _i567.DeleteMaterialUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i608.IMaterialRepository>(),
      ),
    );
    gh.factory<_i567.GetMaterialTransactionsUseCase>(
      () => _i567.GetMaterialTransactionsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i608.IMaterialRepository>(),
      ),
    );
    gh.factory<_i567.AddStockUseCase>(
      () => _i567.AddStockUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i608.IMaterialRepository>(),
      ),
    );
    gh.factory<_i567.SubtractStockUseCase>(
      () => _i567.SubtractStockUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i608.IMaterialRepository>(),
      ),
    );
    gh.lazySingleton<_i828.IAppointmentRepository>(
      () => _i930.AppointmentRepository(
        remoteDatasource: gh<_i545.IRemoteAppointmentDataSource>(),
      ),
    );
    gh.factory<_i65.RefreshSessionUseCase>(
      () => _i65.RefreshSessionUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i557.IAuthRepository>(),
      ),
    );
    gh.factory<_i65.LogoutUseCase>(
      () => _i65.LogoutUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i557.IAuthRepository>(),
      ),
    );
    gh.factory<_i65.GetUserRoleUseCase>(
      () => _i65.GetUserRoleUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i557.IAuthRepository>(),
      ),
    );
    gh.factory<_i486.LoginUseCase>(
      () => _i486.LoginUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i557.IAuthRepository>(),
      ),
    );
    gh.factory<_i405.RegisterUseCase>(
      () => _i405.RegisterUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i557.IAuthRepository>(),
      ),
    );
    gh.factory<_i405.RequestPasswordResetUseCase>(
      () => _i405.RequestPasswordResetUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i557.IAuthRepository>(),
      ),
    );
    gh.factory<_i405.ConfirmPasswordResetUseCase>(
      () => _i405.ConfirmPasswordResetUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i557.IAuthRepository>(),
      ),
    );
    gh.factory<_i467.RestoreSessionUseCase>(
      () => _i467.RestoreSessionUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i557.IAuthRepository>(),
      ),
    );
    gh.factory<_i393.GetClinicsUseCase>(
      () => _i393.GetClinicsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i852.IClinicRepository>(),
      ),
    );
    gh.factory<_i393.CreateClinicUseCase>(
      () => _i393.CreateClinicUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i852.IClinicRepository>(),
      ),
    );
    gh.factory<_i393.DeleteClinicUseCase>(
      () => _i393.DeleteClinicUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i852.IClinicRepository>(),
      ),
    );
    gh.factory<_i316.GetClinicByIdUseCase>(
      () => _i316.GetClinicByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i852.IClinicRepository>(),
      ),
    );
    gh.factory<_i320.MaterialCubit>(
      () => _i320.MaterialCubit(
        getMaterialsUseCase: gh<_i91.GetMaterialsUseCase>(),
      ),
    );
    gh.factory<_i714.AppointmentsReportCubit>(
      () => _i714.AppointmentsReportCubit(
        useCase: gh<_i965.GetAppointmentsReportUseCase>(),
      ),
    );
    gh.factory<_i551.PatientCubit>(
      () => _i551.PatientCubit(
        getPatientsUseCase: gh<_i739.GetPatientsUseCase>(),
      ),
    );
    gh.factory<_i179.ProcedureCubit>(
      () => _i179.ProcedureCubit(
        getProceduresUseCase: gh<_i798.GetProceduresUseCase>(),
      ),
    );
    gh.factory<_i827.AuthCubit>(
      () => _i827.AuthCubit(
        loginUseCase: gh<_i486.LoginUseCase>(),
        restoreSessionUseCase: gh<_i467.RestoreSessionUseCase>(),
        logoutUseCase: gh<_i65.LogoutUseCase>(),
        getUserRoleUseCase: gh<_i65.GetUserRoleUseCase>(),
      ),
    );
    gh.factory<_i181.GetProcedureCategoriesUseCase>(
      () => _i181.GetProcedureCategoriesUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i913.IProcedureCategoryRepository>(),
      ),
    );
    gh.factory<_i181.GetProcedureCategoryByIdUseCase>(
      () => _i181.GetProcedureCategoryByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i913.IProcedureCategoryRepository>(),
      ),
    );
    gh.factory<_i181.CreateProcedureCategoryUseCase>(
      () => _i181.CreateProcedureCategoryUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i913.IProcedureCategoryRepository>(),
      ),
    );
    gh.factory<_i181.UpdateProcedureCategoryUseCase>(
      () => _i181.UpdateProcedureCategoryUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i913.IProcedureCategoryRepository>(),
      ),
    );
    gh.factory<_i181.DeleteProcedureCategoryUseCase>(
      () => _i181.DeleteProcedureCategoryUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i913.IProcedureCategoryRepository>(),
      ),
    );
    gh.factory<_i714.FinancialReportCubit>(
      () => _i714.FinancialReportCubit(
        useCase: gh<_i965.GetFinancialReportUseCase>(),
      ),
    );
    gh.factory<_i714.MaterialsReportCubit>(
      () => _i714.MaterialsReportCubit(
        useCase: gh<_i965.GetMaterialsReportUseCase>(),
      ),
    );
    gh.factory<_i714.PatientsReportCubit>(
      () => _i714.PatientsReportCubit(
        useCase: gh<_i965.GetPatientsReportUseCase>(),
      ),
    );
    gh.factory<_i1047.GetDashboardUseCase>(
      () => _i1047.GetDashboardUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i304.IDashboardRepository>(),
      ),
    );
    gh.factory<_i819.ClinicCubit>(
      () => _i819.ClinicCubit(getClinicsUseCase: gh<_i393.GetClinicsUseCase>()),
    );
    gh.factory<_i168.MaterialTransactionCubit>(
      () => _i168.MaterialTransactionCubit(
        getTransactionsUseCase: gh<_i567.GetMaterialTransactionsUseCase>(),
        createTransactionUseCase: gh<_i477.CreateMaterialTransactionUseCase>(),
      ),
    );
    gh.factory<_i905.CreateAppointmentUseCase>(
      () => _i905.CreateAppointmentUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i828.IAppointmentRepository>(),
      ),
    );
    gh.factory<_i905.UpdateAppointmentUseCase>(
      () => _i905.UpdateAppointmentUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i828.IAppointmentRepository>(),
      ),
    );
    gh.factory<_i905.DeleteAppointmentUseCase>(
      () => _i905.DeleteAppointmentUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i828.IAppointmentRepository>(),
      ),
    );
    gh.factory<_i905.CancelAppointmentUseCase>(
      () => _i905.CancelAppointmentUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i828.IAppointmentRepository>(),
      ),
    );
    gh.factory<_i905.CompleteAppointmentUseCase>(
      () => _i905.CompleteAppointmentUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i828.IAppointmentRepository>(),
      ),
    );
    gh.factory<_i905.NoShowAppointmentUseCase>(
      () => _i905.NoShowAppointmentUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i828.IAppointmentRepository>(),
      ),
    );
    gh.factory<_i905.ChangeAppointmentStatusUseCase>(
      () => _i905.ChangeAppointmentStatusUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i828.IAppointmentRepository>(),
      ),
    );
    gh.factory<_i543.GetAppointmentsUseCase>(
      () => _i543.GetAppointmentsUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i828.IAppointmentRepository>(),
      ),
    );
    gh.factory<_i543.GetAppointmentByIdUseCase>(
      () => _i543.GetAppointmentByIdUseCase(
        gh<_i170.NexoLogger>(),
        repository: gh<_i828.IAppointmentRepository>(),
      ),
    );
    gh.factory<_i555.DashboardCubit>(
      () => _i555.DashboardCubit(
        getDashboardUseCase: gh<_i1047.GetDashboardUseCase>(),
      ),
    );
    gh.factory<_i939.ProcedureCategoryCubit>(
      () => _i939.ProcedureCategoryCubit(
        getCategoriesUseCase: gh<_i181.GetProcedureCategoriesUseCase>(),
      ),
    );
    gh.factory<_i164.AppointmentCubit>(
      () => _i164.AppointmentCubit(
        getAppointmentsUseCase: gh<_i543.GetAppointmentsUseCase>(),
        cancelAppointmentUseCase: gh<_i905.CancelAppointmentUseCase>(),
        completeAppointmentUseCase: gh<_i905.CompleteAppointmentUseCase>(),
        noShowAppointmentUseCase: gh<_i905.NoShowAppointmentUseCase>(),
      ),
    );
    return this;
  }
}

class _$StorageModule extends _i764.StorageModule {}

class _$LoggerModule extends _i847.LoggerModule {}

class _$NetworkModule extends _i351.NetworkModule {}
