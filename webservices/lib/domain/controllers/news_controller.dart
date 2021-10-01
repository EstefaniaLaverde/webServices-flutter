import 'package:loggy/loggy.dart';
import 'package:webservices/data/model/news_item.dart';
import 'package:get/get.dart';
import 'package:webservices/domain/use_case/news.dart';

class NewsController extends GetxController {
  var _news = <NewsItem>[].obs;
  var _loading = false.obs;
  // functions getNews() and reset()

  //Getters
  List<NewsItem> get news => _news;
  bool get loading => _loading.value;

  //Functions
  void getTheNews() async {
    _loading.value = true;
    _news.value = await News().getNews();
    _loading.value = true;

    print(_loading.value);
  }

  void reset() {
    _news.value = <NewsItem>[];
    _loading.value = false;
  }
}
