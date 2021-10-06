import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webservices/domain/controllers/news_controller.dart';

class EmptyNews extends StatelessWidget {
  EmptyNews({Key? key}) : super(key: key);
  NewsController newsCtrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            newsCtrl.getNews();
          },
          child: const Text("Football news"),
        ),
      ],
    ));
  }
}
