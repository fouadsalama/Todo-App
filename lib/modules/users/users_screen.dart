import 'package:flutter/material.dart';
import 'package:udemy_flutter/models/user/user_model.dart';

class UsersScreen extends StatelessWidget {
  // const UsersScreen({Key? key}) : super(key: key);
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Fouad Salama',
      phone: '+201098153471',
    ),
    UserModel(
      id: 2,
      name: 'Hamada Salama',
      phone: '+201098123471',
    ),
    UserModel(
      id: 3,
      name: 'Salama Ali',
      phone: '+201098153471',
    ),
    UserModel(
      id: 4,
      name: 'Reda Ali',
      phone: '+201098153471',
    ),
    UserModel(
      id: 5,
      name: 'Mena Ali',
      phone: '+201098153471',
    ),
    UserModel(
      id: 1,
      name: 'Fouad Salama',
      phone: '+201098153471',
    ),
    UserModel(
      id: 2,
      name: 'Hamada Salama',
      phone: '+201098123471',
    ),
    UserModel(
      id: 3,
      name: 'Salama Ali',
      phone: '+201098153471',
    ),
    UserModel(
      id: 4,
      name: 'Reda Ali',
      phone: '+201098153471',
    ),
    UserModel(
      id: 5,
      name: 'Mena Ali',
      phone: '+201098153471',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildRow(users[index]),
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
          );
        },
        itemCount: users.length,
      ),
    );
  }

  Row buildRow(UserModel user) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 25,
            child: Text(
              '${user.id}',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
