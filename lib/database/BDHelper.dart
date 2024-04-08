import 'package:proyecto_moviles/database/usuario_provider.dart';
import 'package:proyecto_moviles/models/usuario_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:proyecto_moviles/models/pedido_model.dart';
import 'package:proyecto_moviles/database/pedido_provider.dart';

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
                   CREATE TABLE clientes (
          id_cliente INTEGER PRIMARY KEY,
          nombre TEXT,
          telefono TEXT
          );

          CREATE TABLE estado_pedido (
          id_estado_pedido INTEGER PRIMARY KEY,
          nombre_estado TEXT
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

          ''');
      },
    );
  }

  // static Future<void> insertProducto(Producto producto) async {
  //   final db = await database;
  //   await db.insert('productos', producto.toMap());
  //   ProductoProvider().fetchProductos();
  // }

  // static Future<void> updatePedido(Pedido pedido) async {
  //   final db = await database;

  //   await db.update(
  //     'pedidos',
  //     pedido.toMap(),
  //     where: 'IdProducto=?',
  //     whereArgs: [producto.IdProducto],
  //   );
  //   ProductoProvider().fetchProductos();
  // }

  // static Future<void> AnularPedido(int ProductoId) async {
  //   final db = await database;

  //   await db.delete(
  //     'productos',
  //     where: 'IdProducto=?',
  //     whereArgs: [ProductoId],
  //   );
  //   ProductoProvider().fetchProductos();
  // }

  static Future<void> insertUsuario(Usuario usuario) async {
    final db = await database;
    await db.insert('usuarios', usuario.toMap());
    UsuarioProvider().fetchUsuario();
  }
}
