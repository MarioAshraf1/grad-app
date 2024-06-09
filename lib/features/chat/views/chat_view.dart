import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/chat/chat_cubit/chat_cubit.dart';
import 'package:graduation_project/features/chat/views/widgets/chat_view_body.dart';
import 'package:graduation_project/features/home/view_models/user_model.dart';

class ChatView extends StatelessWidget {
  final UserModel? doctorModel;

  const ChatView({super.key, this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return ChatViewBody(doctorModel: doctorModel);
  }
}
