import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/appointment/domain/entities/appointment_entity.dart';
import 'package:san_dent/features/appointment/domain/entities/appointment_status.dart';
import 'package:san_dent/features/medical_record/domain/entities/medical_record_entity.dart';
import 'package:san_dent/features/medical_record/domain/entities/patient_history_entity.dart';
import 'package:san_dent/features/medical_record/presentation/cubit/medical_record_cubit.dart';
import 'package:san_dent/features/medical_record/presentation/cubit/patient_history_cubit.dart';
import 'package:san_dent/features/patient/domain/entities/patient_entity.dart';
import 'package:san_dent/features/patient_document/domain/entities/patient_document_entity.dart';
import 'package:san_dent/features/patient_document/presentation/cubit/patient_document_cubit.dart';

/// Patient medical card (design kept, data is real).
///
/// - "История приёмов": `GET patients/{id}/history/` (honest empty state —
///   the backend currently holds no appointments).
/// - "Медзаписи": patient's records from `GET medical-records/` filtered
///   client-side by `patient_id`.
/// - "Документы": `GET patient-documents/?patient=` (honest empty — the
///   backend holds no documents; upload is BLOCKED server-side, 415 on
///   multipart, so the tab is list + delete only, no preview).
/// A visit composer (diagnosis + procedure/material pickers + create) lands
/// once appointments are creatable (`POST /appointments/` 500s — reported).
class PatientMedicalCardScreen extends StatefulWidget {
  const PatientMedicalCardScreen({super.key, required this.patient});

  final PatientEntity patient;

  @override
  State<PatientMedicalCardScreen> createState() =>
      _PatientMedicalCardScreenState();
}

class _PatientMedicalCardScreenState extends State<PatientMedicalCardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, size: 30, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Медицинская карта: ${widget.patient.fullName}',
          style: GoogleFonts.poppins(
            fontSize: 17,
            fontWeight: .w700,
            letterSpacing: 0.4,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            _buildTabBar(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _HistoryTab(patientId: widget.patient.id),
                  _RecordsTab(patientName: widget.patient.fullName),
                  _DocumentsTab(patientId: widget.patient.id),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1)),
      ),
      child: TabBar(
        controller: _tabController,
        labelColor: const Color(0xFF2773BB),
        unselectedLabelColor: Colors.grey,
        indicatorColor: const Color(0xFF2773BB),
        indicatorWeight: 3,
        labelStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: .w600,
          letterSpacing: 0.3,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: .w600,
          letterSpacing: 0.3,
        ),
        tabs: const [
          Tab(text: 'История приёмов'),
          Tab(text: 'Медзаписи'),
          Tab(text: 'Документы'),
        ],
      ),
    );
  }
}

class _HistoryTab extends StatelessWidget {
  final int patientId;

  const _HistoryTab({required this.patientId});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PatientHistoryCubit>();
    return NexoAsyncStateBuilder<PatientHistoryEntity>(
      state: cubit.state,
      loading: (_) => const NexoSkeletonList(itemCount: 4),
      success: (_, history) {
        if (history.appointments.isEmpty) {
          return const NexoEmptyView(
            title: 'Приёмов пока нет',
            subtitle: 'История визитов появится здесь',
          );
        }
        final items = [...history.appointments]
          ..sort((a, b) => b.dateTime.compareTo(a.dateTime));
        return ListView.separated(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          itemCount: items.length,
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemBuilder: (context, index) =>
              _HistoryRow(appointment: items[index]),
        );
      },
      failure: (_, failure) => NexoFailureView(
        failure: failure,
        onRetry: () => cubit.retry(),
      ),
    );
  }
}

class _HistoryRow extends StatelessWidget {
  final AppointmentEntity appointment;

  const _HistoryRow({required this.appointment});

  @override
  Widget build(BuildContext context) {
    final local = appointment.dateTime.toLocal();
    final date =
        '${local.day.toString().padLeft(2, '0')}.${local.month.toString().padLeft(2, '0')}.${local.year}\n'
        '${local.hour.toString().padLeft(2, '0')}:${local.minute.toString().padLeft(2, '0')}';
    final info =
        '${appointment.statusDisplay ?? AppointmentStatus.displayName(appointment.status)}\n'
        '${appointment.doctorName}';
    return Row(
      children: [
        Container(
          width: 96,
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: Text(
            date,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: .w500,
              height: 1.3,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.center,
            child: Text(
              info,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: .w500,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Patient documents (`GET patient-documents/?patient=`).
/// List + delete only: upload is BLOCKED server-side (multipart → 415),
/// and there is no preview yet — rows show type + description + date.
class _DocumentsTab extends StatelessWidget {
  final int patientId;

  const _DocumentsTab({required this.patientId});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PatientDocumentCubit>();
    return NexoAsyncStateBuilder<List<PatientDocumentEntity>>(
      state: cubit.state,
      loading: (_) => const NexoSkeletonList(itemCount: 4),
      success: (_, documents) {
        if (documents.isEmpty) {
          return const NexoEmptyView(
            title: 'Документов пока нет',
            subtitle: 'Загрузка станет доступна после исправления сервера',
          );
        }
        return RefreshIndicator(
          onRefresh: () => cubit.refresh(),
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            itemCount: documents.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (context, index) => _DocumentRow(
              document: documents[index],
              onDelete: () => cubit.deleteDocument(documents[index].id),
            ),
          ),
        );
      },
      failure: (_, failure) => NexoFailureView(
        failure: failure,
        onRetry: () => cubit.retry(),
      ),
    );
  }
}

class _DocumentRow extends StatelessWidget {
  final PatientDocumentEntity document;
  final VoidCallback onDelete;

  const _DocumentRow({required this.document, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    final type =
        (document.documentTypeDisplay ?? '').isEmpty
            ? PatientDocumentType.displayName(document.documentType)
            : document.documentTypeDisplay!;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: .w700,
                    color: Colors.black87,
                  ),
                ),
                if ((document.description ?? '').isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    document.description!,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: .w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
                if ((document.uploadedAt ?? '').isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    document.uploadedAt!,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: const Color(0xFF555555),
                    ),
                  ),
                ],
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline, color: Color(0xFFE0524F)),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}

class _RecordsTab extends StatelessWidget {
  /// List items carry no `patient_id` (swagger `MedicalRecordList`) —
  /// matching by `patient_name` is the only available key.
  final String patientName;

  const _RecordsTab({required this.patientName});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<MedicalRecordCubit>();
    return NexoAsyncStateBuilder<List<MedicalRecordEntity>>(
      state: cubit.state,
      loading: (_) => const NexoSkeletonList(itemCount: 4),
      success: (_, records) {
        final own = records
            .where((r) => r.patientName == patientName)
            .toList();
        if (own.isEmpty) {
          return const NexoEmptyView(
            title: 'Записей пока нет',
            subtitle: 'Диагнозы и назначения появятся здесь',
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          itemCount: own.length,
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemBuilder: (context, index) =>
              _RecordCard(record: own[index]),
        );
      },
      failure: (_, failure) => NexoFailureView(
        failure: failure,
        onRetry: () => cubit.retry(),
      ),
    );
  }
}

class _RecordCard extends StatelessWidget {
  final MedicalRecordEntity record;

  const _RecordCard({required this.record});

  @override
  Widget build(BuildContext context) {
    final counts = [
      if ((record.procedureCount ?? 0) > 0)
        'процедур: ${record.procedureCount}',
      if ((record.materialCount ?? 0) > 0)
        'материалов: ${record.materialCount}',
    ].join(' • ');
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            record.diagnosis,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: .w700,
              color: Colors.black87,
            ),
          ),
          if (counts.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              counts,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: .w500,
                color: Colors.black87,
              ),
            ),
          ],
          if ((record.doctorName ?? '').isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              record.doctorName!,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: .w500,
                color: const Color(0xFF555555),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
