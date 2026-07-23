import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

const String activeHomePath = 'assets/icons/active_home.png';
const String homePath = 'assets/icons/home.png';
const String activePatientsPath = 'assets/icons/active_patients.png';
const String patientsPath = 'assets/icons/patients.png';
const String activeProfilePath = 'assets/icons/active_profile.png';
const String profilePath = 'assets/icons/profile.png';

class MainScreen extends StatelessWidget {
  MainScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  final homeIcon = _IconLogo(path: homePath, activePath: activeHomePath);

  final patientsIcon = _IconLogo(
    path: patientsPath,
    activePath: activePatientsPath,
  );

  final profileIcon = _IconLogo(
    path: profilePath,
    activePath: activeProfilePath,
  );

  final textStyle = GoogleFonts.poppins(
    fontWeight: .w600,
    fontSize: 12,
    letterSpacing: 0.72,
    height: 1,
    color: const Color(0xFF2773BB),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: ClipRRect(
        borderRadius: .only(topLeft: .circular(70), topRight: .circular(70)),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFFE6E6E6),

          currentIndex: navigationShell.currentIndex,
          onTap: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
          selectedLabelStyle: textStyle,
          unselectedLabelStyle: textStyle,
          items: [
            BottomNavigationBarItem(
              icon: homeIcon.inactive(),
              activeIcon: homeIcon.active(),
              label: 'Главная',
              
            ),
            BottomNavigationBarItem(
              icon: patientsIcon.inactive(),
              activeIcon: patientsIcon.active(),
              label: 'Пациенты',
            ),
            BottomNavigationBarItem(
              icon: profileIcon.inactive(),
              activeIcon: profileIcon.active(),
              label: 'Профиль',
            ),
          ],
        ),
      ),
    );
  }
}

class _IconLogo {
  final String activePath;
  final String path;

  const _IconLogo({required this.path, required this.activePath});

  Widget active() {
    return Image.asset(activePath, width: 57, height: 53);
  }

  Widget inactive() {
    return Container(
      width: 57,
      height: 53,
      alignment: .center,
      child: Image.asset(path, width: 30, height: 30),
    );
  }
}
