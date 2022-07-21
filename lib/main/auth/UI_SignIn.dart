// import 'package:all/pages/Menu/UI_Home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate/main/auth/loading.dart';
import '../../../Widget/widget_TextField.dart';
import 'UI_SignUp.dart';
import 'UI_ForgetPassword.dart';
import 'package:provider/provider.dart';
import 'auth_model.dart';
// import '../Menu/UI_Home.dart';
// import '../Bar/UI_BottomBar.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return loading
        ? Loading()
        : Scaffold(
            body: Material(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Union.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Vector.png'),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    // child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "STUDYMATE",
                              style: GoogleFonts.poppins(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            Text(
                              "Sign in",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Image.asset('assets/images/logo.png'),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFieldsWidget(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                hintText: 'Email',
                                obscureText: false,
                                prefixIconData: Icons.email,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "email can't be empty";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFieldsWidget(
                                controller: _passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                hintText: 'Password',
                                obscureText: true,
                                prefixIconData: Icons.lock,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "password can't be empty";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    height: 40,
                                    child: FloatingActionButton(
                                      // backgroundColor: colorOrange1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        'Sign in',
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      onPressed: () async {
                                        if (_formKey.currentState!.validate()) {
                                          setState(() => loading = true);
                                          var message =
                                              await authService.signIn(
                                                  email: _emailController.text,
                                                  password:
                                                      _passwordController.text);

                                          if (message!.contains("Success")) {
                                            var snackBar = SnackBar(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              backgroundColor: Colors.blue,
                                              duration: Duration(seconds: 2),
                                              content: Text(
                                                authService.getUser() == null
                                                    ? ""
                                                    : "Login sebagai " +
                                                        authService
                                                            .getUser()
                                                            .displayName
                                                            .toString(),
                                              ),
                                            );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                            Navigator.pushNamed(
                                                context, '/home');
                                          } else {
                                            setState(() => loading = false);
                                            print(message.toString());
                                            var snackBar = SnackBar(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              backgroundColor: Colors.red,
                                              duration: Duration(seconds: 2),
                                              content: Text(message.toString()),
                                            );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                          }
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             const ForgetPassword()));
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontFamily:
                                            GoogleFonts.poppins().fontFamily,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Not have an account?',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/register');
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'or signin with',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle),
                                        child: Image.asset(
                                          'assets/images/google.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                      Text(
                                        ' Google',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.facebook,
                                        color: Colors.blueAccent,
                                      ),
                                      Text(
                                        ' Facebook',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // ),
                  ),
                ),
              ),
            ),
          );
  }
}
