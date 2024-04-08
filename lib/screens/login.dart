import 'package:flutter/material.dart';
import 'package:proyecto_moviles/models/usuario_model.dart';
import 'package:proyecto_moviles/screens/register.dart';
import 'package:proyecto_moviles/database/BDHelper.dart';
import 'package:proyecto_moviles/screens/producto_list_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _logNombre = "";
  String _logContrasena = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50.0),
                const Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 40.0),
                ),
                const SizedBox(height: 10.0),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'Nombre',
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor ingrese su nombre';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _logNombre = value!;
                          },
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            prefixIcon: const Icon(Icons.lock),
                            hintText: 'Contraseña',
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor ingrese su contraseña';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _logContrasena = value!;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Usuario? usuario =
                          await DBHelper.getUsuario(_logNombre, _logContrasena);
                      if (usuario != null) {
                        // Login exitoso
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PedidosListScreen(), // Aquí cambiamos a PedidosListScreen
                          ),
                        );
                      } else {
                        // Credenciales inválidas
                      }
                    }
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('No tienes cuenta? '),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registrate(
                              usuario: Usuario(
                                  nombre: '', email: '', contrasena: ''),
                            ),
                          ),
                        );
                      },
                      child: const Text('Registro'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
