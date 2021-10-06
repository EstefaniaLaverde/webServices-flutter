import 'package:webservices/domain/controllers/news_controller.dart';
import 'package:webservices/ui/my_app.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'package:get/get.dart';

void main() {
  Get.put(NewsController());
  Loggy.initLoggy(
    //Inicializa loggy
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  runApp(MyApp());
}
