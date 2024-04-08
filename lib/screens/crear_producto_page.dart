import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CrearProductoPage extends StatefulWidget {
  @override
  _CrearProductoPageState createState() => _CrearProductoPageState();
}

class _CrearProductoPageState extends State<CrearProductoPage> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController precioController = TextEditingController();
  TextEditingController imagenController = TextEditingController();

  Future<void> crearProducto() async {
    final url = Uri.parse('https://catalogoflutter.onrender.com/api/catalogo');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'nombre': nombreController.text,
        'precio': int.parse(precioController.text),
        'imagen': imagenController.text,
      }),
    );

    if (response.statusCode == 200) {
      Navigator.pop(context); // Devolver a la página anterior
    } else {
      print('Error al crear el producto: ${response.statusCode}');
      print('Mensaje de error: ${response.body}');
      // Aquí puedes mostrar un mensaje al usuario indicando que hubo un error en la creación del producto
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Nuevo Producto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: precioController,
              decoration: InputDecoration(labelText: 'Precio'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: imagenController,
              decoration: InputDecoration(labelText: 'Imagen URL'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: crearProducto,
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
