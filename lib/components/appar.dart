import 'package:flutter/material.dart';

class appar_widget extends StatelessWidget {
  const appar_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                title: Text(
                  'bocor',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                subtitle: Text('Cade',
                    style: TextStyle(fontSize: 35, color: Colors.white)),
                trailing: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/a.jpg'),
                ),
              ),
            );
  }
}