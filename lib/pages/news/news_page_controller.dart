import 'package:get/get.dart';
import 'package:practicas/models/news_model.dart' as news_model;
import 'package:practicas/providers/news_provider.dart';

class NewsController extends GetxController {
  final RxBool isLoading = true.obs;
  final RxBool hasError = false.obs;
  final RxList<news_model.NewModel> newsList = <news_model.NewModel>[].obs;

  void fetchNews() async {
    try {
      isLoading.value = true;
      final jsonModel = await NewsProvider().fetchNews();
      newsList.assignAll(jsonModel);
    } catch (e) {
      hasError.value = true;
      print('Error al obtener los datos: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
