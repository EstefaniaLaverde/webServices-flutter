import 'package:loggy/loggy.dart';
import 'package:get/get.dart';
import 'package:webservices/data/model/news_item.dart';
import 'package:webservices/domain/use_case/news.dart';

class NewsController extends GetxController {
  var _news = <NewsItem>[].obs;
  var _loading = false.obs;

  News theNews = News();
  // functions getNews() and reset()

  //Getters
  List<NewsItem> get news => _news;
  bool get loading => _loading.value;

  //Functions
  void changeLoadingstate(bool b) {
    _loading.value = b;
  }

  Future<void> getNews() async {
    changeLoadingstate(true);
    //LLamar a await getList en news
    _news.value = await theNews.getNews();
    logInfo(_news.value.toString());

    changeLoadingstate(false);
  }

  void reset() {
    _news.value = <NewsItem>[];
    _loading.value = false;
  }
}
