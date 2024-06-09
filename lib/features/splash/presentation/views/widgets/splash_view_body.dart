import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/utils/app_router.dart';
import 'package:graduation_project/core/utils/assets.dart';
import 'package:graduation_project/features/auth/auth_cubit/auth_cubit.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimationLogo;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigatingToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SlideTransition(
              position: slidingAnimationLogo,
              child: Image.asset(AssetsData.kneeImage)),
          const SizedBox(
            height: 4,
          ),

        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimationLogo =
        Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    slidingAnimationLogo.addListener(() {
      setState(() {});
    });

  }

  void navigatingToHomeView() {
    var auth = BlocProvider.of<AuthCubit>(context);
    Future.delayed(
      const Duration(seconds: 2),
      ()  async{
        auth.getDoctorsList();
        await auth.getAuthStatus() ? GoRouter.of(context).push(AppRouter.kHomeView) : GoRouter.of(context).push(AppRouter.kLoginView);
      },
    );
  }
}
