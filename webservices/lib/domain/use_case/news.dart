import 'package:get/get.dart';
import 'package:webservices/data/data_repository.dart';
import 'package:webservices/data/model/news_item.dart';

class News {
  //Conexion con data_repository para llamar las noticias
  final DataRepository _dataRepository = DataRepository();

  Future<List<NewsItem>> getNews() async {
    return await _dataRepository.getItems('football');
  }
  //Future<List<NewsItem>> getNews() async  => var list = await _dataRepository.getItems;
}
