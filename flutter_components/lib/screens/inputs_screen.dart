import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Christopher',
      'last_name': 'Vasco',
      'Email': 'christopher.2001v@outlook.es',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    helperText: 'Solo letras',
                    counterText: '3 caracteres',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    helperText: 'Solo letras',
                    counterText: '3 caracteres',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomInputField(
                    labelText: 'Email',
                    hintText: 'Correo del usuario',
                    helperText: 'Solo letras',
                    counterText: '3 caracteres',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      //esta linea hace que el teclado se oculte
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no válido');
                        return;
                      }
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
