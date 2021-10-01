import 'package:get/get.dart';
import 'package:webservices/data/model/news_item.dart';
import 'package:webservices/data/remote/guardian_client.dart';

class News {
  final TheGuardianClient _dataRepository = TheGuardianClient('');
  Future<List<NewsItem>> getNews() async {
    return _dataRepository.getItems('football');
  }

  //Future<List<NewsItem>> getNews() async  => var list = await _dataRepository.getItems;
  //news llama las noticias. en el control se usa news.getnews
}
