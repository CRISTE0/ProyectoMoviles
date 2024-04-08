import 'package:proyecto_moviles/database/BDHelper.dart';
import 'package:proyecto_moviles/models/usuario_model.dart';
import 'package:flutter/material.dart';

class UsuarioProvider extends ChangeNotifier {
  List<Usuario> _usuarios = [];
  List<Usuario> get usuarios => _usuarios;

  Future<void> fetchUsuario() async {
    final db = await DBHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('usuarios');

    _usuarios = List.generate(maps.length, (i) {
      return Usuario(
        nombre: maps[i]['nombre'],
        email: maps[i]['email'],
        contrasena: maps[i]['contrasena'],
      );
    });
    notifyListeners();
  }
}
