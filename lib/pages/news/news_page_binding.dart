import 'package:get/get.dart';
import 'package:practicas/pages/news/news_page_controller.dart';

class NewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsController>(() => NewsController());
  }
}
