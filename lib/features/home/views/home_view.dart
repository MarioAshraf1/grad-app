import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/home/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/views/widgets/home_view_body.dart';
import 'package:icon_broken/icon_broken.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = 'homeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: BlocProvider
            .of<HomeCubit>(context)
            .currentIndex,
        onTap: (index) {
          BlocProvider.of<HomeCubit>(context).changeBottomNav(index);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home', icon: Icon(IconBroken.Home,),),
          BottomNavigationBarItem(
            label: 'Chats', icon: Icon(IconBroken.Chat,),),

        ],
      ),
      body:  SafeArea(child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen:(_,currentState)=>currentState is ChangeBottomNavState,
        builder: (context, state) {

          return HomeViewBody();
        },
      )),
    );
  }
}
