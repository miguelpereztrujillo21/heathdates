import 'package:flutter/material.dart';
import 'package:healthdates/presentation/screens/home/home_screen.dart';
import 'package:healthdates/presentation/widgets/shared/input_field_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            // Nuevo
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: const _LoginView(),
          ),
        ),
      ),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Image(
              image: AssetImage('assets/images/healtdates_top.PNG'),
            ),
            const InputFieldBox(
              hintText: 'Usuario',
              obscureText: false,
            ),
            const InputFieldBox(
              hintText: 'Contraseña',
              icon: Icon(Icons.visibility),
              onClickIcon: Icon(Icons.visibility_off),
              obscureText: true,
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ErrorPasswordRequirements extends StatelessWidget {
  const _ErrorPasswordRequirements();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Column(
      children: [
        Text('La contraseña debe tener al menos 8 caracteres'),
        Text('La contraseña debe tener al menos un número'),
        Text('La contraseña debe tener al menos una letra mayúscula'),
        Text('La contraseña debe tener al menos una letra minúscula'),
      ],
    ));
  }
}
