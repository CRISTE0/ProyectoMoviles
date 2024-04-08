import 'package:proyecto_moviles/models/pedido_model.dart';
import 'package:proyecto_moviles/database/BDHelper.dart';
import 'package:flutter/material.dart';

class PedidoProvider extends ChangeNotifier {
  List<Pedido> _pedidos = [];
  List<Pedido> get pedidos => _pedidos;

  Future<void> fetchPedidos() async {
    final db = await DBHelper.database;

    final List<Map<String, dynamic>> maps = await db.query('pedidos');

    _pedidos = await Future.wait(
      List.generate(
        maps.length,
        (i) async {
          final clienteMap = await db.query('clientes',
              where: 'id_cliente = ?', whereArgs: [maps[i]['id_cliente']]);
          final estadoMap = await db.query('estado_pedido',
              where: 'id_estado_pedido = ?',
              whereArgs: [maps[i]['id_estado_pedido']]);

          final nombreCliente =
              clienteMap.isNotEmpty ? clienteMap[0]['nombre'] as String? : null;
          final nombreEstado = estadoMap.isNotEmpty
              ? estadoMap[0]['nombre_estado'] as String?
              : null;

          return Pedido(
            id: maps[i]['id_pedido'],
            fecha: maps[i]['fecha'],
            total: maps[i]['total'],
            subtotal: maps[i]['subtotal'],
            descuento: maps[i]['descuento'],
            iva: maps[i]['iva'],
            nombreCliente: nombreCliente ?? 'Cliente desconocido',
            nombreEstado: nombreEstado ?? 'Estado desconocido',
            idCliente: maps[i]['id_cliente'],
            idEstadoPedido: maps[i]['id_estado_pedido'],
          );
        },
      ),
    );
    notifyListeners();
  }

  Future<List<String>> getNombresEstados() async {
    final db = await DBHelper.database;

    final List<Map<String, dynamic>> estadoMaps =
        await db.query('estado_pedido');
    return estadoMaps
        .map((estadoMap) => estadoMap['nombre_estado'] as String)
        .toList();
  }

  Future<void> updateEstadoPedido(Pedido pedido) async {
    final db = await DBHelper.database;
    await db.update(
      'pedidos',
      {
        'id_estado_pedido': pedido.idEstadoPedido,
      },
      where: 'id_pedido = ?',
      whereArgs: [pedido.id],
    );
    await fetchPedidos(); // Actualizar la lista de pedidos después de la actualización
  }
}
