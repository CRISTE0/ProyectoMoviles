import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:proyecto_moviles/models/usuario_model.dart';

class DBHelper {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDatabase();
    return _database!;
  }

  static Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'pedidos.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
                   CREATE TABLE usuarios (
          id_usuario INTEGER PRIMARY KEY,
          nombre TEXT,
          contrasena TEXT
          );

          INSERT INTO usuarios (nombre, contrasena) VALUES ('usuario1', 'contrasena1');
          INSERT INTO usuarios (nombre, contrasena) VALUES ('usuario2', 'contrasena2');
          ''');
      },
    );
  }

  static Future<List<Usuario>> getAllUsuarios() async {
    final db = await database;
    List<Map<String, dynamic>> usuarios = await db.query('usuarios');
    return usuarios.map((e) => Usuario.fromMap(e)).toList();
  }

  static Future<Usuario?> getUsuario(String nombre, String contrasena) async {
    final db = await database;
    List<Map<String, dynamic>> usuarios = await db.rawQuery(
        "SELECT * FROM usuarios WHERE nombre = '$nombre' AND contrasena = '$contrasena'");
    if (usuarios.isNotEmpty) {
      return Usuario.fromMap(usuarios.first);
    } else {
      return null;
    }
  }

  static Future<void> insertUsuario(Usuario usuario) async {
    final db = await database;
    await db.insert('usuarios', usuario.toMap());
  }
}
