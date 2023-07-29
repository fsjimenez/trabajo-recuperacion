import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicas/pages/carnet/carnet_binding.dart';

import 'package:practicas/pages/counter/counter_binding.dart';
import 'package:practicas/pages/counter/counter_page.dart';
import 'package:practicas/pages/news/news_page_binding.dart';
import 'package:practicas/pages/pokemon/pokemon_binding.dart';
import 'package:practicas/screens/pokemon_page.dart';
import 'package:practicas/screens/carnet_page.dart';
import 'package:practicas/screens/menu_page.dart';
import 'package:practicas/screens/news_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const MenuPage(),
      getPages: [
        GetPage(
          transition: Transition.zoom,
          name: '/contador_get',
          page: () => const CounterPage(),
          bindings: [
            CounterBinding(),
          ],
        ),
        GetPage(
          transition: Transition.zoom,
          name: '/carnet_page',
          page: () => const CarnetPage(),
          bindings: [
            CarnetBinding(),
          ],
        ),
        GetPage(
          transition: Transition.zoom,
          name: '/news_get',
          page: () => const NewsPage(),
          bindings: [
            NewsBinding(),
          ],
        ),
        GetPage(
          transition: Transition.zoom,
          name: '/pokemon_get',
          page: () => const PokemonPage(),
          bindings: [
            PokemonBinding(),
          ],
        ),
      ],
    );
  }
}