class EstadoPedido {
  int id;
  String nombreEstado;

  EstadoPedido({
    required this.id,
    required this.nombreEstado,
  });

  factory EstadoPedido.fromMap(Map<String, dynamic> map) => EstadoPedido(
        id: map['id_estado_pedido'],
        nombreEstado: map['nombre_estado'],
      );

  Map<String, dynamic> toMap() => {
        'id_estado_pedido': id,
        'nombre_estado': nombreEstado,
      };
}
