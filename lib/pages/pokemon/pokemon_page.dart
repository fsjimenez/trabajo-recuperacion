import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:practicas/models/pokemon_response_model.dart';
import 'package:practicas/pages/pokemon/pokemon_controller.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listado de Pokemons',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GetX<PokemonController>(
        init: PokemonController(),
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
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 1,
                childAspectRatio: 3 / 2,
              ),
              itemCount: controller.pokemonList.length,
              itemBuilder: (context, index) {
                PokemonModel item = controller.pokemonList[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.downloading),
                      ),
                      Text(
                        item.name.toUpperCase(),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        item.url,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ],
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
