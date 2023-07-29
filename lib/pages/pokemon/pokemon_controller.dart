import 'package:get/get.dart';
import 'package:practicas/models/pokemon_response_model.dart';
import 'package:practicas/providers/pokemon_provider.dart';

class PokemonController extends GetxController {
  final RxBool isLoading = true.obs;
  final RxBool hasError = false.obs;
  final RxList<PokemonModel> pokemonList = <PokemonModel>[].obs;

  void fetchPokemons() async {
    try {
      isLoading.value = true;
      final pokemonResponse = await PokemonsProvider().fetchPokemons();
      pokemonList.assignAll(pokemonResponse);
    } catch (e) {
      hasError.value = true;
      print('Error al obtener los datos: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
