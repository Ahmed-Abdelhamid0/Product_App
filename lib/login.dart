
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:product_app/firebase_services.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> mailState = GlobalKey();
  GlobalKey<FormState> passState = GlobalKey();
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final FirebaseAuthServices authServices =FirebaseAuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding:  EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            SizedBox(height: 20),
            Form(
              key: mailState,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: mailController,
                validator: (value){
                  if(value!.isEmpty){
                    return 'e-mail is required';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'E-mail Address',
                  hintStyle: TextStyle(
                    color: Colors.black
                  ),
                  enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.white
                     ),


                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white
                    )
                  ),

                ),
              ),
            ),
            SizedBox(height: 20),
            Form(
              key: passState,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: passController,
                obscureText: true,
                validator: (val){
                  if(val!.isEmpty){
                    return 'password is required';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.black
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white
                    ),


                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white
                      )
                  ),

                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white
                ),
                  onPressed: (){
                  setState(() {
                    if(mailState.currentState!.validate()&&passState.currentState!.validate()){
                      signIn();
                    }
                  });
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }

void signIn()async{
    String email=mailController.text;
    String password=passController.text;
    User? user =await authServices.signInWithEmailAndPassword(email, password) ;
    if(user!=null){
      setState(() {
        var snackBar = SnackBar(content: Text('Login Success'),duration: Duration(seconds: 3),);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
      // print('Login Success');
      Navigator.pushReplacementNamed(context, 'home');
    }else{
      setState(() {
        var snackBar = SnackBar(content: Text('Login Failed'),duration: Duration(seconds: 3),);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });

      // print('Login Failed');
    }

}
}
