import 'package:flutter/material.dart';
import 'package:termaria/pages/principal.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 225, 77, 1), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.25, 1.0],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'TERMARIA',
                      style: TextStyle(
                        fontSize: 50,
                        fontFamily: "Prosto One",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Formulario(),
                  ],
                ),
              ),
            ),
          ),
          const Botones(),
        ],
      ),
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 90,
            height: 90,
            child: IconButton(
              onPressed: () {
                // Acción para iniciar sesión con Facebook
              },
              icon: Image.asset('assets/facebook.png'),
              iconSize: 40,
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: 90,
            height: 90,
            child: IconButton(
              onPressed: () {
                // Acción para iniciar sesión con Google
              },
              icon: Image.asset('assets/google.png'),
              iconSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}

class Formulario extends StatelessWidget {
  const Formulario({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Correo',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Principal()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 225, 77, 1),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Acción para recuperar contraseña
              },
              child: const Text(
                '¿Olvidó su contraseña?',
                style: TextStyle(color: Colors.orange, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
