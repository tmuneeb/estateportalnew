import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    //back button with rounded corners and back aicon
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Respond to button press
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      'Welcome back! Glad to see you, Again!',
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF7F8F9),
                        border: Border.all(
                          color: Color(0xffE8ECF4),
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: _emailController,
                        autofillHints: const [AutofillHints.email],
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF7F8F9),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text(
                            'Enter Your Email',
                            style: GoogleFonts.urbanist(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        cursorColor: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF7F8F9),
                        border: Border.all(
                          color: Color(0xffE8ECF4),
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        cursorHeight: 20,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        autofillHints: const [AutofillHints.email],
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                        obscureText: _obscureText,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            splashRadius: 10,
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xffF7F8F9),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text(
                            'Enter Your Password',
                            style: GoogleFonts.urbanist(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        cursorColor: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: GoogleFonts.urbanist(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ThemeData.light().elevatedButtonTheme.style,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Respond to button press
                            print(_emailController.text);
                          }
                        },
                        child: const Text('Login'),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    //devider with center text
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: Divider(
                              color: Colors.grey[300],
                              height: 36,
                            ),
                          ),
                        ),
                        Text(
                          'Or Login With',
                          style:
                              ThemeData.light().textTheme.bodySmall!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Divider(
                              color: Colors.grey[300],
                              height: 36,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    //social login buttons 3 buttons for facebook, google and apple
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.black12,
                              width: 1,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          child: const Icon(Icons.facebook, color: Colors.blue),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.black12,
                              width: 1,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          child: Icon(Icons.g_translate_rounded,
                              color: Colors.red),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.black12,
                              width: 1,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          child:
                              Icon(Icons.apple, color: Colors.black, size: 30),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // dont have an account? sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: ThemeData.light().textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text(
                      'Register Now',
                      style: ThemeData.light().textTheme.bodySmall!.copyWith(
                            color: Color.fromRGBO(53, 194, 193, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
