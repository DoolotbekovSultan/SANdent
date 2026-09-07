import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/patient/domain/entities/patient_entity.dart';
import 'package:san_dent/features/patient/domain/entities/patient_statistics_entity.dart';
import 'package:san_dent/features/patient/presentation/cubit/patient_cubit.dart';
import 'package:san_dent/features/patient/presentation/cubit/patient_statistics_cubit.dart';

/// Patients list (design kept from the mock screen, data from [PatientCubit]).
class PatientsScreen extends StatefulWidget {
  const PatientsScreen({super.key});

  @override
  State<PatientsScreen> createState() => _PatientsScreenState();
}

class _PatientsScreenState extends State<PatientsScreen> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();

  PatientCubit get _cubit => context.read<PatientCubit>();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        _cubit.loadMore();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PatientCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Пациенты',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: .w800,
            fontSize: 17,
            letterSpacing: 1.02,
            height: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: .symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchController,
              onSubmitted: cubit.search,
              decoration: InputDecoration(
                hintText: 'Поиск',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isEmpty
                    ? null
                    : IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          cubit.search('');
                          setState(() {});
                        },
                      ),
                border: OutlineInputBorder(
                  borderRadius: .circular(22),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xFFF4F4F5),
              ),
              onChanged: (_) => setState(() {}),
            ),
          ),
          const _PatientStatisticsBlock(),
          Expanded(
            child: NexoAsyncStateBuilder<List<PatientEntity>>(
              state: cubit.state,
              loading: (_) => const NexoSkeletonList(itemCount: 6),
              success: (_, patients) {
                if (patients.isEmpty) {
                  return const NexoEmptyView(
                    title: 'Нет пациентов',
                    subtitle: 'Попробуйте изменить запрос',
                  );
                }
                return ListView.separated(
                  controller: _scrollController,
                  padding: .symmetric(horizontal: 16, vertical: 16),
                  itemCount: patients.length + (cubit.hasMore ? 1 : 0),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 23),
                  itemBuilder: (context, index) {
                    if (index >= patients.length) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return _PatientListItem(patient: patients[index]);
                  },
                );
              },
              failure: (_, failure) => NexoFailureView(
                failure: failure,
                onRetry: () => cubit.retry(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Global counters strip (`GET patients/statistics/`, doctor/director).
/// Auxiliary block: collapses on loading/failure (admin → 403) so the main
/// list keeps its own states.
class _PatientStatisticsBlock extends StatelessWidget {
  const _PatientStatisticsBlock();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<PatientStatisticsCubit>()..load(),
      child: const _PatientStatisticsView(),
    );
  }
}

class _PatientStatisticsView extends StatelessWidget {
  const _PatientStatisticsView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PatientStatisticsCubit>();
    return NexoAsyncStateBuilder<PatientStatisticsEntity>(
      state: cubit.state,
      loading: (_) => const SizedBox.shrink(),
      success: (_, stats) => Container(
        width: double.infinity,
        margin: .symmetric(horizontal: 16, vertical: 4),
        padding: .symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: .circular(11),
        ),
        child: Row(
          mainAxisAlignment: .spaceAround,
          children: [
            _StatCounter(title: 'Всего', value: '${stats.total}'),
            _StatCounter(title: 'Новых за месяц', value: '${stats.newThisMonth}'),
            _StatCounter(title: 'Активных', value: '${stats.active}'),
          ],
        ),
      ),
      failure: (_, _) => const SizedBox.shrink(),
    );
  }
}

class _StatCounter extends StatelessWidget {
  final String title;
  final String value;

  const _StatCounter({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 12, color: Colors.black54),
        ),
      ],
    );
  }
}

class _PatientListItem extends StatelessWidget {
  final PatientEntity patient;

  const _PatientListItem({required this.patient});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/patients/${patient.id}', extra: patient),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Expanded(
              flex: 218,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(11),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      patient.fullName,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        height: 1,
                        letterSpacing: 0.9,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 11),
                    Text(
                      patient.phone,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        height: 1,
                        letterSpacing: 0.9,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 20, child: SizedBox.shrink()),
            Expanded(flex: 50, child: _LogoCard()),
            Expanded(flex: 20, child: SizedBox.shrink()),
            Expanded(flex: 50, child: _LogoCard(isPhone: true)),
          ],
        ),
      ),
    );
  }
}

class _LogoCard extends StatelessWidget {
  const _LogoCard({this.isPhone = false});

  final bool isPhone;

  String get logoPath =>
      isPhone ? 'assets/icons/phone.png' : 'assets/icons/watsapp.png';
  double get logoSize => isPhone ? 20 : 25;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Center(
        child: Image.asset(logoPath, width: logoSize, height: logoSize),
      ),
    );
  }
}
