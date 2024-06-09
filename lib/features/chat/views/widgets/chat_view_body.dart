import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/chat/chat_cubit/chat_cubit.dart';
import 'package:graduation_project/features/chat/view_models/message_model.dart';

import 'chat_bubble.dart';

class ChatViewBody extends StatefulWidget {
  const ChatViewBody({super.key});

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}

class _ChatViewBodyState extends State<ChatViewBody> {
  List<MessageModel> messagesList = [];
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var chat = BlocProvider.of<ChatCubit>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [

      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff274460),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'chat',
            ),
          ],
        ),
      ),
      body: BlocConsumer<ChatCubit, ChatState>(
        listener: (context, state) {
          if (state is ChatSuccess) {
            messagesList = state.messagesList;
          }
        },
        buildWhen: (_, currentState) =>
            currentState is ChatSuccess || currentState is ChatInitial,
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: messagesList.length,
                  itemBuilder: (c, index) => ChatBubble(
                    messageModel: messagesList[index],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller,
                  onTap: () async {
                    if (controller.text.isNotEmpty) {
                      await chat.sendMassage(controller.text);
                    }
                    controller.clear();
                  },
                  decoration: InputDecoration(
                    hintText: 'Send Message',
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.send,
                      ),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
