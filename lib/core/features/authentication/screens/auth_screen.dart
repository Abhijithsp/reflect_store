import 'package:flutter/material.dart';
import 'package:reflect/utils/common_widgets/customButton.dart';
import 'package:reflect/utils/common_widgets/customTextfield.dart';
import 'package:reflect/utils/constants/settings/settings.dart';

enum Auth {
  signin,
  singup,
}

class SignInScreen extends StatefulWidget {
  static const String signinPage = "/auth_screen";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Auth _auth = Auth.signin;
  final _signInKey = GlobalKey<ScaffoldState>();
  final _signUpKey = GlobalKey<ScaffoldState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController createUsernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    createUsernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to Reflect Store',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Settings().colorPrimary,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          radioButtons(),
          if (_auth == Auth.signin)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Form(
                  key: _signInKey,
                  child: Column(
                    children: [
                      CustomTextField(
                          controller: usernameController, hintText: "Username"),
                      const SizedBox(height: 20),
                      CustomTextField(
                          controller: passwordController, hintText: "Password"),
                      const SizedBox(height: 20),
                      CustomButton(
                        customHeight: 50,
                        customWidth: 200,
                        text: "Sign In",
                        icon: const Icon(Icons.arrow_forward),
                        onTap: () {
                          print("Sign In");
                        },
                      ),
                    ],
                  )),
            ),
          if (_auth == Auth.singup)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Form(
                  key: _signUpKey,
                  child: Column(
                    children: [
                      CustomTextField(
                          controller: usernameController,
                          hintText: "Email Address"),
                      const SizedBox(height: 20),
                      CustomTextField(
                          controller: createUsernameController,
                          hintText: "User Name"),
                      const SizedBox(height: 20),
                      CustomTextField(
                          controller: passwordController, hintText: "Password"),
                      const SizedBox(height: 20),
                      CustomButton(
                        customHeight: 50,
                        customWidth: 150,
                        text: "Sign Up",
                        icon: const Icon(Icons.person_add),
                        onTap: () {
                          print("Sign Up");
                        },
                      ),
                    ],
                  )),
            ),
        ],
      )),
    );
  }

  Row radioButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 50,
          width: 240,
          child: ListTile(
            title: const Text("Create Account"),
            leading: Radio(
                value: Auth.singup,
                groupValue: _auth,
                activeColor: Settings().colorPrimary,
                onChanged: (Auth? value) {
                  setState(() {
                    _auth = value!;
                  });
                }),
          ),
        ),
        SizedBox(
          height: 50,
          width: 150,
          child: ListTile(
            title: const Text("login"),
            leading: Radio(
                value: Auth.signin,
                groupValue: _auth,
                activeColor: Settings().colorPrimary,
                onChanged: (Auth? value) {
                  setState(() {
                    _auth = value!;
                  });
                }),
          ),
        ),
      ],
    );
  }
}
