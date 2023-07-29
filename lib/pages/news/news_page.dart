import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicas/models/news_model.dart' as news_model;
import 'package:practicas/pages/news/news_page_controller.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listado noticias',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GetX<NewsController>(
        builder: (controller) {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (controller.hasError.value) {
            return const Center(
              child: Text('Error al obtener los datos'),
            );
          } else {
            return ListView.builder(
              itemCount: controller.newsList.length,
              itemBuilder: (context, index) {
                news_model.NewModel item = controller.newsList[index];
                return ListTile(
                  leading: Image.network(
                    item.image.url,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error);
                    },
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return const CircularProgressIndicator();
                    },
                  ),
                  title: Text(
                    item.title,
                    maxLines: 1,
                  ),
                  subtitle: Text(
                    item.description,
                    maxLines: 2,
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
