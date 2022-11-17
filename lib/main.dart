
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:searchbar/Screen/view/searchScreen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context)=>SearchScreen()
    },
  ));
}