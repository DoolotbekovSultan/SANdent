import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminMainScreen extends StatelessWidget {
  AdminMainScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  final List<String> _labels = ['Главная', 'Персонал', 'Склад'];
  final List<IconData> _icons = [
    Icons.home_outlined,
    Icons.groups_outlined,
    Icons.home_work_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF1F1F3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
        ),
        padding: const EdgeInsets.only(top: 10, bottom: 6),
        child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(3, (index) {
              final selected = navigationShell.currentIndex == index;
              return GestureDetector(
                onTap: () => navigationShell.goBranch(
                  index,
                  initialLocation: index == navigationShell.currentIndex,
                ),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selected ? const Color(0xFF2773BB) : Colors.transparent,
                      ),
                      child: Icon(
                        _icons[index],
                        color: selected ? Colors.white : const Color(0xFF2773BB),
                        size: 26,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      _labels[index],
                      style: GoogleFonts.poppins(
                        color: selected ? const Color(0xFF1A1A1A) : const Color(0xFF2773BB),
                        fontWeight: selected ? FontWeight.bold : FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Container(
                      width: 34,
                      height: 3,
                      color: selected ? const Color(0xFF1A1A1A) : Colors.transparent,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}