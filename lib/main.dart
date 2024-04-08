import 'package:proyecto_moviles/screens/pedido_list_screen.dart';
import 'package:proyecto_moviles/database/pedido_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'package:proyecto_moviles/screens/login.dart';
import 'package:proyecto_moviles/screens/catalogo_page.dart';

void main() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  runApp(
    ChangeNotifierProvider(
      create: (context) => PedidoProvider(),
      child: MaterialApp(
<<<<<<< HEAD
        home: PedidosListScreen(),
=======
        home: LoginPage(),
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
      ),
    ),
  );
}
