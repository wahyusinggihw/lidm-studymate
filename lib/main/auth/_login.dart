import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Welcome!",
                      style: GoogleFonts.poppins(
                          fontSize: 32, fontWeight: FontWeight.w800)),
                  Text(
                    "SIGN UP",
                    style: GoogleFonts.poppins(
                        fontSize: 62, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: 'lorem@example.com',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        Container(height: 20),
                        TextFormField(
                          obscureText: true,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            // hintText: 'lorem@example.com',
                            labelText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: double.infinity,
            //         width: 200,
            //         decoration: const BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //             bottomRight: Radius.circular(205),
            //           ),
            //           color: Colors.red,
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         height: double.infinity,
            //         width: 200,
            //         decoration: const BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //             bottomRight: Radius.circular(205),
            //           ),
            //           color: Colors.green,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Column(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         decoration: const BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //             bottomRight: Radius.circular(205),
            //           ),
            //           color: Colors.red,
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         decoration: const BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(205),
            //           ),
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
