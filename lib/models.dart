class Coin {
  final String id;
  final String name;
  final String symbol;
  final String imageurl;
  final double priceVsUsd;
  final double priceChange24Percentage;

  Coin({
    required this.id,
    required this.name,
    required this.symbol,
    required this.imageurl,
    required this.priceVsUsd,
    required this.priceChange24Percentage,
  });
}

class Usuario {
  final String id;
  final String nombre;
  final String email;
  final String password;
  final String telefono;

  Usuario({
    required this.id,
    required this.nombre,
    required this.email,
    required this.password,
    required this.telefono,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nombre: json['nombre'],
      email: json['email'],
      password: json['password'],
      telefono: json['telefono'],
    );
  }
}
