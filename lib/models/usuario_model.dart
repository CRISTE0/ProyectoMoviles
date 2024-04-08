class Usuario {
  String nombre;
  String email;
  String contrasena;

  Usuario({
    required this.nombre,
    required this.email,
    required this.contrasena,
  });
  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'email': email,
      'contrasena': contrasena,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) => Usuario(
        nombre: map['nombre'],
        email: map['email'],
        contrasena: map['contrasena'],
      );
}
