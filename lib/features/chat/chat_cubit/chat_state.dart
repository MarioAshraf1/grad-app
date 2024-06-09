part of 'chat_cubit.dart';

abstract class ChatState {}

class ChatInitial extends ChatState {}
class ChatSuccess extends ChatState {
final List <MessageModel> messagesList;

  ChatSuccess({required this.messagesList});
}

