import 'package:flutter/material.dart';
import 'package:webservices/domain/controllers/news_controller.dart';
import 'package:get/get.dart';
import 'empy_view.dart';
import 'loaded_view.dart';
import 'loading_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  NewsController newsCtrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 22, right: 2, left: 2),
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/logo.png")),
            Container(child: Obx(() {
              if (newsCtrl.loading) {
                return LoadingView();
              } else {
                if (newsCtrl.news.isEmpty) {
                  return EmptyNews();
                } else {
                  return LoadedView();
                }
              }
            }))
          ],
        ),
      ),
    );
  }
}


// basic logic
// if (loading) { LoadingView() } else {               
//   if (isEmpty) {    
//     print('Home -> Empty list');
//     EmptyNews();
//   } else {
//     print('Home -> List with Data');
//     LoadedView();
//   }
// }