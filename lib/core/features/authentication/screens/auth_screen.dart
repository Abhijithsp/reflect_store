import 'package:flutter/material.dart';
import 'package:reflect/utils/common_widgets/customButton.dart';
import 'package:reflect/utils/common_widgets/customTextfield.dart';
import 'package:reflect/utils/constants/settings/settings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum Auth {
  signin,
  singup,
}

class SignInScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          radioButtons(),
          if (_auth == Auth.signin)
            Padding(
              padding: EdgeInsets.symmetric(vertical: Adaptive.h(5)),
              child: Form(
                  key: _signInKey,
                  child: Column(
                    children: [
                      CustomTextField(
                          controller: usernameController, hintText: "Username"),
                      CustomTextField(
                          controller: passwordController, hintText: "Password"),
                      CustomButton(
                        customHeight: Adaptive.h(7),
                        customWidth: Adaptive.w(50),
                        text: "Sign In",
                        icon: const Icon(Icons.arrow_forward),
                        onTap: () {
                          print("Sign In");
                          clearTextField();
                        },
                      ),
                    ],
                  )),
            ),
          if (_auth == Auth.singup)
            Padding(
              padding: EdgeInsets.symmetric(vertical: Adaptive.h(5)),
              child: Form(
                  key: _signUpKey,
                  child: Column(
                    children: [
                      CustomTextField(
                          controller: usernameController,
                          hintText: "Email Address"),
                      CustomTextField(
                          controller: createUsernameController,
                          hintText: "User Name"),
                      CustomTextField(
                          controller: passwordController, hintText: "Password"),
                      const SizedBox(height: 20),
                      CustomButton(
                        customHeight: Adaptive.h(7),
                        customWidth: Adaptive.w(50),
                        text: "Sign Up",
                        icon: const Icon(Icons.person_add),
                        onTap: () {
                          print("Sign Up");
                          clearTextField();
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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: ListTile(
            title: Text("Create Account", style: Settings().normalText),
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
        Expanded(
          flex: 1,
          child: ListTile(
            title: const Text("Login"),
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

  void clearTextField() {
    usernameController.clear();
    passwordController.clear();
    emailController.clear();
    createUsernameController.clear();
  }
}
