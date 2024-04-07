// import 'package:crud_productos/screens/producto_detail_screen.dart';
import 'package:proyecto_moviles/models/pedido_model.dart';
import 'package:proyecto_moviles/database/pedido_provider.dart';
import 'package:proyecto_moviles/screens/producto_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PedidosListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pedidoProvider = Provider.of<PedidoProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de pedidos"),
      ),
      body: FutureBuilder(
        future: pedidoProvider.fetchPedidos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemCount: pedidoProvider.pedidos.length,
              itemBuilder: (context, index) {
                final pedido = pedidoProvider.pedidos[index];
                return ListTile(
                  title: Text('Cliente: ${pedido.nombreCliente}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total: ${pedido.total}"),
                      Text("Estado: ${pedido.nombreEstado}")
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PedidoDetailScreen(
                          pedido: pedido,
                        ),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
