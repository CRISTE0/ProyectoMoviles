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

<<<<<<< HEAD
          INSERT INTO usuarios (nombre, contrasena) VALUES ('usuario1', 'contrasena1');
          INSERT INTO usuarios (nombre, contrasena) VALUES ('usuario2', 'contrasena2');
=======
          CREATE TABLE estado_pedido (
          id_estado_pedido INTEGER PRIMARY KEY,
          nombre_estado TEXT
          );

          CREATE TABLE usuarios (
          id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
          nombre TEXT,
          email TEXT,
          contrasena TEXT
          );

         CREATE TABLE pedidos(
          id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
          fecha TEXT, 
          total REAL,
          subtotal REAL,
          descuento REAL,
          iva REAL,
          id_cliente INTEGER,
          id_estado_pedido INTEGER,
          FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
          FOREIGN KEY (id_estado_pedido) REFERENCES estado_pedido (id_estado_pedido)
          );



          INSERT INTO clientes (nombre,telefono) VALUES ('Alfonso Caramelo',3046665413);
          INSERT INTO estado_pedido (nombre_estado) VALUES ('Aceptado');
          INSERT INTO estado_pedido (nombre_estado) VALUES ('Pendiente');
          INSERT INTO estado_pedido (nombre_estado) VALUES ('Anulao');

          INSERT INTO pedidos (fecha, total, subtotal, descuento, IVA, id_cliente, id_estado_pedido) 
          VALUES ('2024-04-10', 100.0, 72.9, 10.0, 19.0, 1, 2); 

>>>>>>> a5a80aeb697483fdeca49774c9adb18ba28be6e1
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
