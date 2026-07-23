import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:san_dent/features/patients/data/patient_model.dart';
import 'package:san_dent/features/patients/ui/patient_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PatientsScreen extends ConsumerWidget {
  const PatientsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final patientsState = ref.watch(patientsProvider);
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
      body: patientsState.when(
        data: (patients) {
          return PatientsListWidget(patients: patients,);
        },
        loading: () => PatientsListWidget(patients: null),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

class PatientsListWidget extends StatelessWidget {
  const PatientsListWidget({
    super.key,
    required this.patients
  });

  final List<PatientModel>? patients;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: patients == null,
      child: ListView.separated(
        padding: .symmetric(horizontal: 16, vertical: 40),
        itemCount: patients?.length ?? 13,
        separatorBuilder: (context, index) => const SizedBox(height: 23),
        itemBuilder: (context, index) {
          final patient = patients?[index] ?? PatientModel(id: '2', fullname: "Doolotebekov Sultan", number: '0500597848');
          return _PatientListItem(patient: patient);
        },
      ),
    );
  }
}

class _PatientListItem extends StatelessWidget {
  final PatientModel patient;

  const _PatientListItem({required this.patient});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    patient.fullname,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      height: 1,
                      // height: 57.36 / 15, // line-height / font-size = 3.824
                      letterSpacing: 0.9, // 6% of 15px = 0.9
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 11),
                  Text(
                    patient.number,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      height: 1,
                      // height: 57.36 / 15, // line-height / font-size = 3.824
                      letterSpacing: 0.9, // 6% of 15px = 0.9
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
