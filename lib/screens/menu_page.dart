import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/practicas-image.png'),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.toNamed(
                        '/contador_get',
                      );
                    },
                    icon: const Icon(Icons.alarm_add_rounded),
                    label: const Text("Ir contador GetX"),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      Get.toNamed(
                        '/carnet_page',
                      );
                    },
                    icon: const Icon(Icons.assignment_ind_outlined),
                    label: const Text("Ir a carnet GetX"),
                  ),
                  

                  ElevatedButton.icon(
                    onPressed: () {
                      Get.toNamed(
                        '/news_get',
                      );
                    },
                    icon: const Icon(Icons.data_array),
                    label: const Text("Ir a noticias GetX"),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      Get.toNamed(
                        '/pokemon_get',
                      );
                    },
                    icon: const Icon(Icons.api),
                    label: const Text("Ir a pokemon GetX"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}