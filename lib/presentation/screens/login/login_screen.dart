import 'package:flutter/material.dart';
import 'package:healthdates/presentation/widgets/shared/input_field_box.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _LoginView(),
      ),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView({super.key});

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
            const InputFieldBox(hintText: 'Usuario'),
            const InputFieldBox(
                hintText: 'Contraseña', icon: Icon(Icons.visibility)),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Agrega tu lógica de manejo de clics aquí
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
