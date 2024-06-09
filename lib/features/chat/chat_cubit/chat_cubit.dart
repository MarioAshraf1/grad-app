import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/features/chat/view_models/message_model.dart';
import 'package:graduation_project/features/home/views/chat_list_view.dart';
import 'package:graduation_project/features/home/views/home_view.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  List<MessageModel> messagesList =[];
  CollectionReference doctorCollection =
      FirebaseFirestore.instance.collection(kDoctorsCollection);
  final String uId = FirebaseAuth.instance.currentUser!.uid;

  CollectionReference messagesCollection =
      FirebaseFirestore.instance.collection(kMessagesCollection);

  Future<void> sendMassage(String message) async {
    final messageModel =
        MessageModel(message: message, date: DateTime.timestamp(), uId: uId);
    await messagesCollection.doc().set(messageModel.toJson());
  }

  getMessages() {
    List<MessageModel> messagesList = [];
    messagesCollection.snapshots().listen(
      (event) {
        for (var doc in event.docs) {
          messagesList.add(MessageModel.fromJson(doc));
        }
        emit(ChatSuccess(messagesList: messagesList));
      },
    );
  }

  List<Widget>screens = [
    HomeView(),
    ChatListView(),
  ];
  int currentIndex = 0;
  void changeBottomNav(index){
    currentIndex = index;
  }
}

