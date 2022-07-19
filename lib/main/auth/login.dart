import 'package:flutter/material.dart';
import 'package:study_mate/main/appbar.dart';
import 'package:study_mate/main/auth/auth_model.dart';
import 'package:study_mate/main/bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      appBar: const PreferredSize(
          child: CustomAppBarSignIn(), preferredSize: Size.fromHeight(167)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 50, bottom: 0),
                    // padding: EdgeInsets.symmetric(
                    //   horizontal: 15,
                    // ),
                    child: TextFormField(
                      controller: _emailController,
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        fillColor: colorForm,
                        labelText: 'Email',
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        fillColor: colorForm,
                        labelText: 'Password',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 0, bottom: 0),
            child: TextButton(
              child: Text(
                "forgot password",
                style: GoogleFonts.poppins(
                    color: colorOrange1,
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 255, right: 15.0, top: 5, bottom: 0),
            child: SizedBox(
              width: 121,
              height: 50,
              child: FloatingActionButton(
                backgroundColor: colorOrange1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Sign in',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
                onPressed: () async {
                  var message = await authService.signIn(
                      email: _emailController.text,
                      password: _passwordController.text);
                  if (message!.contains("Success")) {
                    var snackBar = SnackBar(
                      backgroundColor: Colors.blue,
                      duration: Duration(seconds: 4),
                      content: Text(
                        authService.getUser() == null
                            ? ""
                            : "Login sebagai " +
                                authService.getUser().displayName.toString(),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Navigator.pushNamed(context, '/home');
                  } else {
                    var snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 4),
                      content: Text(message.toString()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipPath(
        clipper: WaveClipperTwo(reverse: true),
        child: Container(
          height: 120,
          color: colorOrange.withOpacity(0.3),
          child: Center(
              child: Stack(
            children: [
              Align(
                child: Text(
                  "Not have account?",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: TextButton(
                    child: Text(
                      "Signup",
                      style: GoogleFonts.poppins(
                          color: colorOrange1,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
