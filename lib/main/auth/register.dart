// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:study_mate/main/appbar.dart';
import 'package:study_mate/main/bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmPasswordController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const PreferredSize(
          child: CustomAppBarSignUp(), preferredSize: Size.fromHeight(167)),
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
                  margin: const EdgeInsets.all(5),
                  child: Padding(
                    //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
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
                Container(
                  margin: const EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Padding(
                    //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        fillColor: colorForm,
                        labelText: 'Confirm password',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 15.0, top: 5, bottom: 0),
            child: Row(
              children: [
                Text(
                  "Already Signup?",
                  style: TextStyle(fontSize: 13),
                ),
                TextButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: colorOrange1, fontSize: 13),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ],
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
                  'Sign Up',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
                onPressed: () {},
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
                  "Or sign up with",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            splashRadius: 15,
                            iconSize: 20,
                            icon: Icon(
                              MdiIcons.google,
                            ),
                            onPressed: () {},
                          ),
                          Text('Google')
                        ],
                      ),
                      SizedBox(width: 10),
                      Row(
                        children: [
                          IconButton(
                            splashRadius: 15,
                            iconSize: 20,
                            icon: Icon(MdiIcons.facebook),
                            onPressed: () {},
                          ),
                          Text('Facebook')
                        ],
                      ),
                    ],
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
