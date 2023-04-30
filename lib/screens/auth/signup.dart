import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  Container(
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
                    icon: const Icon(Icons.arrow_back, color: Colors.black87),
                  ),
                ),
                
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                  'Hello! Register to get started.',
                  style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                  const SizedBox(height: 20),
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
                    autofillHints: const [AutofillHints.email],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your username';
                      }
                      if (value.length < 6) {
                        return 'Username must be at least 6 characters long.';
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF7F8F9),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text(
                        'Username',
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
                  const SizedBox(height: 20),
                  //make email Password confirm password
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
                    autofillHints: const [AutofillHints.email],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (value.length < 6) {
                        return 'Email must be at least 6 characters long.';
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF7F8F9),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text(
                        'Email',
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
                  const SizedBox(height: 20),
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
                    autofillHints: const [AutofillHints.email],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long.';
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF7F8F9),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text(
                        'Password',
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
                  const SizedBox(height: 20),
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
                    autofillHints: const [AutofillHints.email],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long.';
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF7F8F9),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text(
                        'Confirm Password',
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
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: const Text('Sign Up'),
                    ),
                  ),
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
                      style: ThemeData.light().textTheme.bodySmall!.copyWith(
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
                      child: Icon(Icons.g_translate_rounded, color: Colors.red),
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
                      child: Icon(Icons.apple, color: Colors.black, size: 30),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Respond to button press
                        },
                        child: const Text('Sign In'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}