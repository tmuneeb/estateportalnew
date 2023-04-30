import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    //whole scaffold with an image bg and text and button on the end for login signup or login as guest
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1566041510639-8d95a2490bfb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=978&q=80"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Welcome to Estate Portal",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        
                      },
                      child: const Text('Login'),
                    ),
                  ),
                  
            const SizedBox(
              height: 20,
            ),
            //same as above but with transparent bg and black text with border 2px black solid
            Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 254, 254),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                      onPressed: () {
                        // Respond to button press
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text(
                'Continue as Guest',
                style: ThemeData.light().textTheme.bodySmall!.copyWith(
                      color: Color.fromRGBO(53, 194, 193, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
