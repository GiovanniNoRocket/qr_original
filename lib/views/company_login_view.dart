import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isEmailValid;
  final bool isPasswordValid;
  final VoidCallback loginPressed;

  LoginView({
    required this.emailController,
    required this.passwordController,
    required this.isEmailValid,
    required this.isPasswordValid,
    required this.loginPressed,
  });

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de sesión empresas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.12),
            Icon(
              Icons.corporate_fare,
              color: Color.fromARGB(255, 37, 43, 214),
              size: 200,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.035),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                  errorText:
                      isEmailValid ? null : 'Correo electrónico inválido',
                ),
              ),
            ),
            SizedBox(height: 16, width: widthDevice),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: 'Contraseña',
                    errorText: isPasswordValid ? null : 'Contraseña inválida',
                    border: OutlineInputBorder()),
                obscureText: true,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: loginPressed,
              child: Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}