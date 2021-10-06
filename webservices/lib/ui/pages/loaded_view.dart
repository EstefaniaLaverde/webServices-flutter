import 'package:webservices/domain/controllers/news_controller.dart';
import 'package:webservices/ui/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadedView extends StatelessWidget {
  LoadedView({Key? key}) : super(key: key);

  NewsController newsCtrl = Get.find();
  Future _refreshList(BuildContext context) async {
    // here call showNews on the controller
    await newsCtrl.getNews();
  }

  @override
  Widget build(BuildContext context) {
    List<ListItem> items = [];

    for (var news in newsCtrl.news) {
      items.add(ListItem(news));
    }

    return Expanded(
      child: GestureDetector(
        onHorizontalDragEnd: (details) {
          // here call reset on the controller
          newsCtrl.reset();
        },
        child: RefreshIndicator(
          child: ListView(
            children: items,
          ),
          onRefresh: () => _refreshList(context),
        ),
      ),
    );
  }
}
