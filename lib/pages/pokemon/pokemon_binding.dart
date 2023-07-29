import 'package:get/get.dart';
import 'package:practicas/pages/pokemon/pokemon_controller.dart';

class PokemonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PokemonController>(() => PokemonController());
  }
}
