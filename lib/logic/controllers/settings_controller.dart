import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';



class SettingController extends GetxController {
  var swithchValue = false.obs;
  var storage = GetStorage();

  String capitalize(String profileName) {
    return profileName.split(" ").map((name) => name.capitalize).join(" ");
  }



}
