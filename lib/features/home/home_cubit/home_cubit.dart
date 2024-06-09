import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/features/home/view_models/user_model.dart';

import '../views/chat_list_view.dart';
import '../views/home_view.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  // CollectionReference userCollection =
  //     FirebaseFirestore.instance.collection('users');
  // final storage = FirebaseStorage.instance;
  //  UserModel? userModel;
  //
  // Future<void> uploadImages(File imageFile) async {
  //   emit(HomeInitial());
  //   try {
  //     final Reference storageRef = storage.ref().child('users');
  //     final UploadTask uploadTask =
  //         storageRef.child('${imageFile.hashCode}').putFile(imageFile);
  //     final TaskSnapshot snapshot = await uploadTask;
  //     final String downloadUrl = await snapshot.ref.getDownloadURL();
  //     final uId = FirebaseAuth.instance.currentUser!.uid;
  //     await userCollection.doc(uId).update({'profileImage': downloadUrl});
  //     await getUser();
  //     emit(ImageLoaded());
  //   } catch (e) {
  //     emit(ImageFailure(errMessage: e.toString()));
  //   }
  // }
  //
  // Future<void> getUser() async {
  //   final uId = FirebaseAuth.instance.currentUser!.uid;
  //   final docSnapshot = await userCollection.doc(uId).get();
  //   userModel = UserModel.fromJson(docSnapshot);
  // }
  List<Widget>screens = [
    HomeView(),
    ChatListView(),
  ];
  int currentIndex = 0;
  void changeBottomNav(index){
    currentIndex = index;

  }

}
