import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mad_labs/utils/constants.dart';
import 'package:mad_labs/widgets/button.dart';
import 'package:mad_labs/widgets/text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100.0,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFieldWidget(
                hintText: "Enter Username",
                labelText: "Username",
                textInputType: TextInputType.name,
                controller: nameController,
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                hintText: "Enter Email id",
                labelText: "Email",
                textInputType: TextInputType.emailAddress,
                controller: emailController,
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                hintText: "Enter Password",
                labelText: "Password",
                textInputType: TextInputType.visiblePassword,
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              ButtonWidget(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/homepage');
                  Constants.prefs?.setBool("loggedIn", true);
                },
                buttonText: "Sign Up",
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 14.0, left: 60.0, bottom: 14.0),
                child: RichText(
                  text: TextSpan(
                      text: "Already Have an Account? ",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 16.0),
                      children: [
                        TextSpan(
                            text: "Sign In",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pushReplacementNamed(
                                  context, '/signin')),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
