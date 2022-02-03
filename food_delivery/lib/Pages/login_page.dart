import 'package:flutter/material.dart';
import 'package:food_delivery/Constants/colors.dart';
import 'package:food_delivery/Firebase/authentication.dart';
import 'package:food_delivery/Widgets/custom_input.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(
          children: [
            Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Add your details to login',
              style: TextStyle(color: Colors.grey[800], fontSize: 16),
            ),
            const Spacer(),
            CustomTextInput(hintText: 'Email'),
            const Spacer(),
            CustomTextInput(hintText: 'Password'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColor.orange),
                  shape: MaterialStateProperty.all(StadiumBorder(
                    side: BorderSide(
                      color: AppColor.orange,
                      width: 1.5,
                    ),
                  )),
                ),
                onPressed: () {
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Text(
              'Forgot your password?',
              style: TextStyle(color: Colors.grey[800], fontSize: 16),
            ),
            const Spacer(
              flex: 7,
            ),
            Text(
              'or login with',
              style: TextStyle(color: Colors.grey[800], fontSize: 15),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFDD4B39)),
                  shape: MaterialStateProperty.all(StadiumBorder(
                    side: BorderSide(color: Color(0xFFDD4B39), width: 1.5),
                  )),
                ),
                onPressed: (){
                  print("test");
                  Authentication.signInWithGoogle(context: context)
                      .then((value) {
                    print("Logged in");
                  });
                },
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.grey[800]),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
