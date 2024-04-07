class Pedido {
  int id;
  String fecha; // Campo de fecha
  double total; // Campo de total
  double subtotal; // Campo de subtotal
  double descuento; // Campo de descuento
  double iva; // Campo de IVA
  String nombreCliente;
  String nombreEstado;
  int idCliente;
  int idEstadoPedido;

  Pedido({
    required this.id,
    required this.fecha,
    required this.total,
    required this.subtotal,
    required this.descuento,
    required this.iva,
    required this.nombreCliente,
    required this.nombreEstado,
    required this.idCliente,
    required this.idEstadoPedido,
  });

  factory Pedido.fromMap(Map<String, dynamic> map) => Pedido(
        id: map['id_pedido'],
        fecha: map['fecha'],
        total: map['total'],
        subtotal: map['subtotal'],
        descuento: map['descuento'],
        iva: map['IVA'],
        nombreCliente: map['nombre_cliente'],
        nombreEstado: map['nombre_estado'],
        idCliente: map['id_cliente'],
        idEstadoPedido: map['id_estado_pedido'],
      );

  Map<String, dynamic> toMap() => {
        'id_pedido': id,
        'id_cliente': idCliente,
        'id_estado_pedido': idEstadoPedido,
        'fecha': fecha,
        'total': total,
        'subtotal': subtotal,
        'descuento': descuento,
        'IVA': iva,
      };
}
