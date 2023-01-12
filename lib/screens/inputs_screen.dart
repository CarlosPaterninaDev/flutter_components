import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inputs Forms")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            TextFormField(
              autofocus: true,
              initialValue: 'Example text',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {},
              validator: (value) {
                if (value == null) return 'Field required!';
                return value.length < 10 ? 'Minimo 10 letras ' : null;
              },
              autovalidateMode: AutovalidateMode
                  .onUserInteraction, // ! Normalmente esta al nivel del formulario
              decoration: const InputDecoration(
                hintText: 'Username',
                labelText: 'Username',
                helperText: 'Only letters',
                counterText: '10 caracteres',
                prefixIcon: Icon(Icons.abc),
                suffixIcon: Icon(Icons.contact_mail),
                icon: Icon(Icons.supervised_user_circle),
                border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(10) ))
              ),
      

            
        )]),
        ),
      ),
    );
  }
}
