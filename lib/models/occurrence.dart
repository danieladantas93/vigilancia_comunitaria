class Occurrences {
  String id;
  String name;
  String data;
  String location;
  String description;

  Occurrences(
      {required this.id,
      required this.name,
      required this.data,
      required this.location,
      required this.description});

  Occurrences.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        data = map["data"],
        location = map["location"],
        description = map["description"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "data": data,
      "location": location,
      "descripition": description
    };
  }
}
