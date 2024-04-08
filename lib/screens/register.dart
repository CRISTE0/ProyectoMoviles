import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_moviles/database/BDHelper.dart';
import 'package:proyecto_moviles/database/usuario_provider.dart';
import 'package:proyecto_moviles/models/usuario_model.dart';
import 'package:proyecto_moviles/screens/login.dart';
import 'package:sqlite3/sqlite3.dart';

class Registrate extends StatefulWidget {
  final Usuario usuario;

  const Registrate({required this.usuario});

  @override
  _RegistrateState createState() => _RegistrateState();
}

class _RegistrateState extends State<Registrate> {
  final TextEditingController _nombreController =
      TextEditingController(); // Cambio aquí
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _nombreController.text = widget.usuario.nombre;
    _emailController.text = widget.usuario.email;
    _contrasenaController.text = widget.usuario.contrasena;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrarse'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.0),
                Text(
                  'Registrarse',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 40.0),
                ),
                //Comienzo del formulario
                SizedBox(
                  height: 20.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Nombre',
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                          controller: _nombreController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor ingrese su nombre';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Correo',
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                          controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor ingrese su correo';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Contraseña',
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                          controller: _contrasenaController,
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor ingrese su contraseña';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // _formKey.currentState!.save();
                      _guardarUsuario(context);
                    } else {}
                  },
                  child: Text('Regístrate'),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('¿Ya tienes una cuenta? '),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text('Iniciar sesión'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _guardarUsuario(BuildContext context) async {
    if (_nombreController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _contrasenaController.text.isNotEmpty) {
      Usuario oUsuario = Usuario(
        nombre: _nombreController.text,
        email: _emailController.text,
        contrasena: _contrasenaController.text,
      );

      if (widget.usuario.nombre != null) {
        await DBHelper.insertUsuario(oUsuario);
      }
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }
  }
}
