import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/chat/chat_cubit/chat_cubit.dart';
import 'package:graduation_project/features/chat/views/widgets/chat_view_body.dart';
class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ChatCubit(),
        child: ChatViewBody());
  }
}
