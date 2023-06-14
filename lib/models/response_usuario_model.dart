class ResponseUsuarioModel {
  late int id;
  late int grupoId;
  late String nombre;
  late String email;
  late String password;
  late String telefono;
  late int clienteId;
  late int tipousuarioId;

  ResponseUsuarioModel({
    this.id = 0,
    this.grupoId = 0,
    this.nombre = "",
    this.email = "",
    this.password = "",
    this.telefono = "",
    this.clienteId = 0,
    this.tipousuarioId = 0,
  });

  factory ResponseUsuarioModel.fromJson(Map<String, dynamic> json) {
    print(json);
    return ResponseUsuarioModel(
      id: json["id"],
      grupoId: json["grupo_id"],
      nombre: json["nombre"],
      email: json["email"],
      password: json["password"],
      telefono: json["telefono"],
      clienteId: json["cliente_id"],
      tipousuarioId: json["tipousuario_id"],
    );
  }
}
