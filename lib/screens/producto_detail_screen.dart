import 'package:proyecto_moviles/models/pedido_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_moviles/database/BDHelper.dart';
import 'package:proyecto_moviles/screens/producto_list_screen.dart';
import 'package:proyecto_moviles/models/pedido_model.dart';
import 'package:proyecto_moviles/database/pedido_provider.dart';

class PedidoDetailScreen extends StatefulWidget {
  final Pedido pedido;

  PedidoDetailScreen({required this.pedido});

  @override
  _PedidoDetailScreenState createState() => _PedidoDetailScreenState();
}

class _PedidoDetailScreenState extends State<PedidoDetailScreen> {
  final TextEditingController _fechaController = TextEditingController();
  final TextEditingController _subtotalController = TextEditingController();
  final TextEditingController _descuentoController = TextEditingController();
  final TextEditingController _ivaController = TextEditingController();
  final TextEditingController _totalController = TextEditingController();
  final TextEditingController _nombreclienteController =
      TextEditingController();
  final TextEditingController _nombreEstadoController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _fechaController.text = widget.pedido.fecha;
    _subtotalController.text = widget.pedido.subtotal.toString();
    _descuentoController.text = widget.pedido.descuento.toString();
    _ivaController.text = widget.pedido.iva.toString();
    _totalController.text = widget.pedido.total.toString();
    _nombreclienteController.text = widget.pedido.nombreCliente;
    _nombreEstadoController.text = widget.pedido.nombreEstado;
  }

  @override
  Widget build(BuildContext context) {
    final pedidosProvider = Provider.of<PedidoProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles del pedido"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _fechaController,
              decoration: InputDecoration(
                labelText: "Fecha",
              ),
            ),
            TextField(
              controller: _subtotalController,
              decoration: InputDecoration(
                labelText: "SubTotal",
              ),
            ),
            TextField(
              controller: _descuentoController,
              decoration: InputDecoration(
                labelText: "Descuento",
              ),
            ),
            TextField(
              controller: _ivaController,
              decoration: InputDecoration(
                labelText: "IVA",
              ),
            ),
            TextField(
              controller: _totalController,
              decoration: InputDecoration(
                labelText: "Total",
              ),
            ),
            TextField(
              controller: _nombreclienteController,
              decoration: InputDecoration(
                labelText: "Cliente",
              ),
            ),
            FutureBuilder(
              future: pedidosProvider.getNombresEstados(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Text('No se encontraron estados de pedido');
                } else {
                  return DropdownButton<String>(
                    value: widget.pedido.nombreEstado, // Valor inicial
                    onChanged: (String? newValue) {
                      // Aquí puedes manejar la lógica cuando se selecciona un estado
                    },
                    items: snapshot.data!.map((estado) {
                      return DropdownMenuItem<String>(
                        value: estado,
                        child: Text(estado),
                      );
                    }).toList(),
                  );
                }
              },
            ),

            SizedBox(height: 16),
            // ElevatedButton(
            //     onPressed: () {
            //       _savedpedido(context);
            //     },
            //     child: Text("Guardar")),
            // if (widget.pedido.Idpedido != null)
            //   ElevatedButton(
            //     onPressed: () {
            //       _deletepedido(context, widget.pedido.Idpedido!);
            //     },
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     child: Text("Eliminar"),
            //   ),
          ],
        ),
      ),
    );
  }

  // void _savedpedido(BuildContext context) async {
  //   final pedidoProvider = Provider.of<pedidoProvider>(context, listen: false);

  //   if (_fechaController.text.isNotEmpty &&
  //       _subtotalController.text.isNotEmpty &&
  //       _descuentoController.text.isNotEmpty) {
  //     pedido updatepedido = pedido(
  //       Idpedido: widget.pedido.Idpedido,
  //       Nombre: _fechaController.text,
  //       Precio: int.parse(_subtotalController.text),
  //       Cantidad: int.parse(_descuentoController.text),
  //     );

  //     if (widget.pedido.Idpedido == null) {
  //       await DBHelper.insertpedido(updatepedido);
  //     } else {
  //       await DBHelper.updatepedido(updatepedido);
  //     }
  //     await Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => pedidoListScreen(),
  //       ),
  //     );
  //     await pedidoProvider.fetchpedidos();
  //   }
  // }

  // Future<void> _insertpedido(pedido pedido) async {
  //   await DBHelper.insertpedido(pedido);
  // }

  // Future<void> _updatepedido(pedido pedido) async {
  //   await DBHelper.updatepedido(pedido);
  // }

  // Future<void> _deletepedido(BuildContext context, int pedidoId) async {
  //   await DBHelper.deletepedido(pedidoId);

  //   await Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => pedidoListScreen(),
  //     ),
  //   );

  //   await Provider.of<pedidoProvider>(context, listen: false).fetchpedidos();
  // }
}
