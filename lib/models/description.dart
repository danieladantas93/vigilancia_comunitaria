// ignore: camel_case_types
class Description {
  String id;
  String occurrence;
  String location;

  String? urlImagem;

  Description({
    required this.id,
    required this.occurrence,
    required this.location,
  });

  Description.fromMap(Map<String, dynamic> map) // Pega as informações
      : id = map["id"],
        occurrence = map["occurrence"],
        location = map["location"],
        urlImagem = map["urlImagm"];

  Map<String, dynamic> toMap() {
    // E nvia as infomações
    return {
      "id": id,
      "occurrence": occurrence,
      "location": location,
      "urlImagen": urlImagem,
    };
  }
}
