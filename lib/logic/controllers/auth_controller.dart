import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../routes/routes.dart';


class AuthController extends GetxController {
  bool isVisibilty = false;
  bool isCheckBox = false;
  var displayUserName = ''.obs;
  var displayUserPhoto = ''.obs;
  var displayUserEmail = ''.obs;


  var isSignedIn = false;
  final GetStorage authBox = GetStorage();


  // @override
  // void onInit() {
  //   displayUserName.value =
  //       (userProfiloe != null ? userProfiloe!.displayName : "")!;
  //   displayUserPhoto.value =
  //       (userProfiloe != null ? userProfiloe!.photoURL : "")!;
  //   displayUserEmail.value = (userProfiloe != null ? userProfiloe!.email : "")!;
  //
  //   super.onInit();
  // }

  void visibility() {
    isVisibilty = !isVisibilty;

    update();
  }

  void checkBox() {
    isCheckBox = !isCheckBox;

    update();
  }









}
