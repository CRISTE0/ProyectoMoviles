class Cliente {
  int id;
  String nombre;
  String telefono;

  Cliente({
    required this.id,
    required this.nombre,
    required this.telefono,
  });

  factory Cliente.fromMap(Map<String, dynamic> map) => Cliente(
        id: map['id_cliente'],
        nombre: map['nombre'],
        telefono: map['telefono'],
      );

  Map<String, dynamic> toMap() => {
        'id_cliente': id,
        'nombre': nombre,
        'telefono': telefono,
      };
}
