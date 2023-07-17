import 'package:flutter/material.dart';
import 'package:testing/widgets/CustomButton.dart';
import 'package:testing/widgets/CustomTextFormField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passWordController = TextEditingController();

  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Text(
          //   'Login Screen',
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 20,
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          CustomTextFormField(
            controller: emailController,
            labelText: 'Email',
            key: const Key('emailKey'),
          ),
          CustomTextFormField(
            isPassword: false,
            controller: passWordController,
            labelText: 'Password',
            key: const Key('passwordKey'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              onPressed: () {
                setState(() {
                  loggedIn = !loggedIn;
                });
              },
              title: 'Login',
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * .06,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          loggedIn
              ? const Text(
                  'LoggedIn Success',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                )
              : Container(),
        ],
      ),
    );
  }
}
