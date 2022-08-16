import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/component/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    onSubmit: (value) {
                      print(value);
                    },
                    onChange: (value) {
                      print(value);
                    },
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'email address must not be empty';
                      }
                      return null;
                    },
                    label: 'Email',
                    prefix: Icons.email,
                  ),
                  SizedBox(height: 15.0),
                  defaultFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    isObscure: isPassword,
                    onPress: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    onSubmit: (value) {
                      print(value);
                    },
                    onChange: (value) {
                      print(value);
                    },
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'password must not be empty';
                      }
                      return null;
                    },
                    label: 'Password',
                    prefix: Icons.lock,
                    suffix:
                        isPassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  SizedBox(height: 20.0),
                  defaultButton(
                    radius: 10,
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    text: 'login',
                  ),
                  SizedBox(height: 20.0),
                  defaultButton(
                    function: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    text: 'ReGister',
                    radius: 20.0,
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
