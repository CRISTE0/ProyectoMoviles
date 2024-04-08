import 'package:flutter/material.dart';
import 'package:proyecto_moviles/models/catalogo_item.dart';
import 'package:proyecto_moviles/services/api_service.dart';
import 'package:proyecto_moviles/screens/crear_producto_page.dart';

class CatalogoPage extends StatefulWidget {
  @override
  _CatalogoPageState createState() => _CatalogoPageState();
}

class _CatalogoPageState extends State<CatalogoPage> {
  late Future<List<CatalogoItem>> futureCatalogo;

  @override
  void initState() {
    super.initState();
    _refreshCatalogo();
  }

  Future<void> _refreshCatalogo() async {
    setState(() {
      futureCatalogo = ApiService.fetchCatalogo().timeout(Duration(seconds: 10));
    });
  }

  Future<void> _borrarProducto(String nombre) async {
    try {
      await ApiService.borrarProductoPorNombre(nombre);
      // Actualizar la lista después de borrar
      await _refreshCatalogo();
    } catch (e) {
      print('Error al borrar el producto: $e');
    }
  }

  Future<void> _actualizarProducto(String nombre, int nuevoPrecio, String nuevaImagen) async {
    try {
      await ApiService.actualizarProducto(nombre, nuevoPrecio, nuevaImagen);
      // Actualizar la lista después de la actualización
      await _refreshCatalogo();
    } catch (e) {
      print('Error al actualizar el producto: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Productos'),
      ),
      body: Center(
        child: FutureBuilder<List<CatalogoItem>>(
          future: futureCatalogo,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text(
                  'No se pudo cargar el catálogo. Comprueba tu conexión a Internet y vuelve a intentarlo');
            } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final item = snapshot.data![index];
                  return ListTile(
                    title: Text(item.nombre),
                    subtitle: Text('\$${item.precio}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                int nuevoPrecio = item.precio;
                                String nuevaImagen = item.imagen;
                                return AlertDialog(
                                  title: Text('Actualizar producto'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(labelText: 'Nuevo precio'),
                                        keyboardType: TextInputType.number,
                                        onChanged: (value) {
                                          nuevoPrecio = int.tryParse(value) ?? item.precio;
                                        },
                                      ),
                                      TextField(
                                        decoration: InputDecoration(labelText: 'Nueva imagen'),
                                        onChanged: (value) {
                                          nuevaImagen = value;
                                        },
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Cancelar'),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        await _actualizarProducto(item.nombre, nuevoPrecio, nuevaImagen);
                                        Navigator.pop(context); // Cierra el diálogo
                                      },
                                      child: Text('Actualizar'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Confirmar eliminación'),
                                  content: Text('¿Seguro que desea borrar este producto?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Cancelar'),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        await _borrarProducto(item.nombre);
                                        Navigator.pop(context); // Cierra el diálogo
                                      },
                                      child: Text('Borrar'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    onTap: () {
                      // Lógica para manejar la selección de un elemento del catálogo
                    },
                  );
                },
              );
            } else {
              return Text(
                  'El catálogo está vacío. Intenta añadir algunos productos');
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CrearProductoPage()),
          );
          _refreshCatalogo();
        },
        tooltip: 'Agregar Producto',
        child: Icon(Icons.add),
      ),
    );
  }
}
