import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const ListTile(
              title: Text("Card"),
              trailing: Icon(Icons.photo),
              subtitle: Text(
                  "Fugiat nulla excepteur consequat consequat dolore est."),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () => {}, child: const Text("Ok")),
                  TextButton(onPressed: () => {}, child: const Text("Cancelar"))
                ],
              ),
            )
          ],
        ));
  }
}
