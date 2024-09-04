import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Pop-up Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text('Show Pop-up'),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // O usuário deve clicar em um botão para fechar o diálogo
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pop-up Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a simple pop-up message.'),
                Text('You can add more content here.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o pop-up
              },
            ),
            ElevatedButton(
              child: Text('Confirm'),
              onPressed: () {
                // Ação para confirmar
                Navigator.of(context).pop(); // Fecha o pop-up
              },
            ),
          ],
        );
      },
    );
  }
}
