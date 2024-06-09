import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/home/home_cubit/home_cubit.dart';
import 'package:icon_broken/icon_broken.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = 'homeView';

  @override
  Widget build(BuildContext context) {
    final homeCubit = HomeCubit.get(context);
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (_,
          currentState) => currentState is ChangeBottomNavState,
      builder: (_, state) {
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: homeCubit.currentIndex,
              onTap: (index) {
                homeCubit.changeBottomNav(index);
              },
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    IconBroken.Home,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Chats',
                  icon: Icon(
                    IconBroken.Chat,
                  ),
                ),
              ],
            ),
            body: homeCubit.screens[homeCubit.currentIndex],
          ),
        );
      },
    );
  }
}
