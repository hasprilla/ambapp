class RutaModel {
  String uid;
  String nombre;
  String distancia;
  String user;

  RutaModel({
    required this.uid,
    required this.nombre,
    required this.distancia,
    required this.user,
  });

  factory RutaModel.fromMap(Map<String, dynamic> map) {
    return RutaModel(
      uid: map['uid'] ?? '',
      nombre: map['nombre'] ?? '',
      distancia: map['distancia'] ?? '',
      user: map['user'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "nombre": nombre,
      "distancia": distancia,
      "user": user,
    };
  }
}
