import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:san_dent/features/profile/data/profile_model.dart';
import 'package:san_dent/features/profile/ui/profile_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileNotifier);
    return Scaffold(
      backgroundColor: const Color(0xFF2773BB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2773BB),
        title: Text(
          'Профиль',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: .w800,
            fontSize: 17,
            letterSpacing: 1.02,
            height: 1,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: .only(top: 115),
            child: Container(
              width: .infinity,
              height: .infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: .only(
                  topLeft: .circular(46),
                  topRight: .circular(46),
                ),
              ),
            ),
          ),
          Container(
            alignment: .center,
            padding: .only(top: 55, left: 16, right: 16),
            child: profileState.when(
              data: (data) => ProfileInfo(data: data,),
              error: (e, s) => const SizedBox.shrink(),
              loading: () => ProfileInfo(data: null,),
            ),
          ),
        ],
      ),
    );
  }
}
class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    this.data,
  });

  final ProfileModel? data;

  @override
  Widget build(BuildContext context) {
    final bool isLoading = data == null;

    return Skeletonizer(
      enabled: isLoading,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isLoading
              ? const Bone.square(size: 120, borderRadius: BorderRadius.all(Radius.circular(60)))
              : Image.asset(data!.imagePath, width: 120, height: 120),
          const SizedBox(height: 17),
          Text(
            isLoading ? 'Константин Константинопольский' : data!.fullname,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.9,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            isLoading ? 'Старший разработчик интерфейсов' : data!.specialization,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.9,
            ),
          ),
          const SizedBox(height: 17),
          Skeleton.keep( 
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isLoading ? null : () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Отметиться',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF020202),
                    letterSpacing: 0,
                    height: 1,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
