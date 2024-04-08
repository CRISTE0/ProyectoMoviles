import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

  String _selectedEstado = "";

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

    // Establece el estado inicial del DropdownButton
    _selectedEstado = widget.pedido.nombreEstado;
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
                    value: _selectedEstado,
                    onChanged: (String? newValue) {
                      // Actualiza el estado seleccionado y reconstruye el widget
                      setState(() {
                        _selectedEstado = newValue!;
                      });
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
            ElevatedButton(
              onPressed: () async {
                widget.pedido.nombreEstado = _selectedEstado;
                await pedidosProvider.updateEstadoPedido(widget.pedido);
                setState(() {
                  _nombreEstadoController.text = widget.pedido.nombreEstado;
                });
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
