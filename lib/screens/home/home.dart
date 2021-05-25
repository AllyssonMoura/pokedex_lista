import 'package:flutter/material.dart';
import 'package:pokedex_lista/models/pokemon.dart';
import 'package:pokedex_lista/provider/pokemons.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("PokeDéx"), centerTitle: true),
        body: ListView.builder(
            padding: EdgeInsets.only(top: 15),
            itemBuilder: builder,
            itemCount: listOfPokemons.length));
  }

  Widget builder(BuildContext context, int index) {
    Pokemon pokemon = listOfPokemons.elementAt(index);
    return ListTile(
        leading: Image.asset(pokemon.photo),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(pokemon.name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
          Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 3),
            child: Text(pokemon.resume, textAlign: TextAlign.justify),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tipo", style: TextStyle(fontWeight: FontWeight.w800)),
                SizedBox(height: 5),
                Container(
                  child:
                      Text(pokemon.type, style: TextStyle(color: Colors.white)),
                  decoration: BoxDecoration(
                      color: pokemon.color,
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(5),
                ),
              ],
            ),
            Column(
              children: [
                Text("Peso", style: TextStyle(fontWeight: FontWeight.w800)),
                SizedBox(height: 5),
                Text("${pokemon.weight} kg")
              ],
            ),
            Column(children: [
              Text("Altura", style: TextStyle(fontWeight: FontWeight.w800)),
              SizedBox(height: 5),
              Text("${pokemon.height} m")
            ])
          ]),
          SizedBox(height: 20)
        ]));
  }
}
