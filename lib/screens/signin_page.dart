import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mad_labs/utils/constants.dart';
import 'package:mad_labs/widgets/button.dart';
import 'package:mad_labs/widgets/text_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                "Sign In",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              const SizedBox(
                height: 15.0,
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
                  Constants.prefs?.setBool("loggedIn", true);
                  Navigator.pushReplacementNamed(context, '/homepage');
                },
                buttonText: "Sign In",
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 14.0, left: 60.0, bottom: 14.0),
                child: RichText(
                  text: TextSpan(
                      text: "Don't Have an Account? ",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 16.0),
                      children: [
                        TextSpan(
                            text: "Sign Up",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pushReplacementNamed(
                                  context, '/signup')),
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
