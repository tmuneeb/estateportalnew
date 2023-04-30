import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
                  'Forgot Password',
                  style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            const SizedBox(height: 20),
            Text(
                  'Enter your email address below to reset your password',
                  style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
            const SizedBox(height: 20),
            Container(
                  height: 60,
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
                
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: const Text('Send Reset Link'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}