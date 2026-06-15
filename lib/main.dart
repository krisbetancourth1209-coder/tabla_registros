import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistroEstudiantes(),
    );
  }
}

class RegistroEstudiantes extends StatefulWidget {
  const RegistroEstudiantes({super.key});

  @override
  State<RegistroEstudiantes> createState() => _RegistroEstudiantesState();
  // creamos el metodo para crear el estado de widget
}

class _RegistroEstudiantesState extends State<RegistroEstudiantes> {
  // Controladores para los campos de texto
  final txtNombre = TextEditingController();
  final txtCuenta = TextEditingController();
  final txtCarrera = TextEditingController();

  List<Map<String, String>> estudiantes = [];

  void agregarEstudiantes() {
    setState(() {
      // actualiza el estado del widget
      estudiantes.add({
        "nombre": txtNombre.text,
        "cuenta": txtCuenta.text,
        "carrera": txtCarrera.text,
      });
      // limpiar los campos de texto
      txtNombre.clear();
      txtCuenta.clear();
      txtCarrera.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    
  }
}
