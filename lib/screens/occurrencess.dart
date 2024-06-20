import "package:flutter/material.dart";
import "package:vigilancia_comunitaria/common/colors.dart";
import "package:vigilancia_comunitaria/models/occurrence.dart";

class Occurrencess extends StatelessWidget {
  Occurrencess({super.key});

  final Occurrences occurrences = Occurrences(
      id: "01",
      name: "Daniela",
      data: "18-06-2024",
      location: "Assalto próximo ao restaurante Ao Dent",
      description: "Assalto próximo ao restaurante Ao Dent por 2 homens");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Mycolors.blue,
        elevation: 0,
        toolbarHeight: 70,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        title: const Text(
          "Relatar ocorrênicas ",
          style: TextStyle(fontSize: 22),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
        child: ListView(
          children: [
            const Text(
              "Número de protocolo ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(occurrences.id),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text(
              "Nome do Usuário ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(occurrences.name),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text(
              " Descrição da ocorrênica ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(occurrences.description),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text(
              "Local da ocorrênica ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(occurrences.location),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Enviar foto")),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Tirar foto")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
