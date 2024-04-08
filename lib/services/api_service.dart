import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:proyecto_moviles/models/catalogo_item.dart';

class ApiService {
  static const String baseUrl =
      'https://catalogoflutter.onrender.com/api/catalogo';

  static Future<List<CatalogoItem>> fetchCatalogo() async {
    try {
      final response =
          await http.get(Uri.parse('$baseUrl')).timeout(Duration(seconds: 10));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((item) => CatalogoItem.fromJson(item)).toList();
      } else {
        throw Exception('Error al cargar el catálogo: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error al cargar el catálogo: $e');
    }
  }

  static Future<void> crearNuevoRegistro(
      String nombre, int precio, String imagen) async {
    try {
      var url = Uri.parse('$baseUrl');
      var response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'nombre': nombre,
          'precio': precio,
          'imagen': imagen,
        }),
      );

      if (response.statusCode == 201) {
        print('Registro creado con éxito');
      } else {
        throw Exception('Error al crear el registro: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error al crear el registro: $e');
    }
  }

  static Future<void> borrarProductoPorNombre(String nombre) async {
    try {
      var url =
          Uri.parse('$baseUrl/$nombre'); // Ruta correcta para borrar por nombre
      var response = await http.delete(url);

      if (response.statusCode == 200) {
        print('Producto borrado con éxito');
      } else {
        throw Exception(
            'Error al borrar el producto: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error al borrar el producto: $e');
    }
  }

    static Future<void> actualizarProducto(
      String nombre, int nuevoPrecio, String nuevaImagen) async {
    try {
      var url = Uri.parse('$baseUrl/$nombre'); // Ruta correcta para actualizar
      var response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'nuevoPrecio': nuevoPrecio,
          'nuevaImagen': nuevaImagen,
        }),
      );

      if (response.statusCode == 200) {
        print('Producto actualizado con éxito');
      } else {
        throw Exception(
            'Error al actualizar el producto: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error al actualizar el producto: $e');
    }
  }
}
