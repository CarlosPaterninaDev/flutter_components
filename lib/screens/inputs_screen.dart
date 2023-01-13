import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, dynamic> formValues = {
      'name': 'Carlos',
      'last_name': 'Pater',
      'email': 'ing@carlos.com',
      'phone': 30100001001,
      'password': '1234',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(title: const Text("Inputs Forms")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(children: [
              CustomInputText(
                labelText: "Name",
                formProperty: 'name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputText(
                labelText: "Lastname",
                formProperty: 'last_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputText(
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
                labelText: "Email",
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputText(
                keyboardType: TextInputType.phone,
                formProperty: 'phone',
                formValues: formValues,
                labelText: "Phone",
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputText(
                keyboardType: TextInputType.visiblePassword,
                formProperty: 'password',
                formValues: formValues,
                obscureText: true,
                labelText: "Password",
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(value: "admin", child: Text("admin")),
                  DropdownMenuItem(value: "user", child: Text("user")),
                  DropdownMenuItem(
                      value: "developer", child: Text("developer")),
                  DropdownMenuItem(value: "devops", child: Text("devops")),
                  DropdownMenuItem(value: "ui", child: Text("ui")),
                ],
                onChanged: (value) {
                  formValues['role'] = value ?? 'Admin';
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!formKey.currentState!.validate()) {
                      print("Invalid Form");
                      return;
                    }

                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text("Submit")),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
