import 'package:flutter/material.dart';
import 'package:signin/component/auth.dart';
import 'package:signin/component/validator.dart';
import 'package:signin/signUp.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> formKeySignin = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffKey = GlobalKey<ScaffoldState>();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthModel signCredential = AuthModel();
  Validator validate = Validator();

  handleSubmit() {
    print(userName.text);
    print(password.text);
    // print(userName.text);
    // print(password.text);
  }

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('Silahkan Periksa'),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );

    return Scaffold(
      key: scaffKey,
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formKeySignin,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello Again!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 250,
                    child: const Text(
                      ' Fill your details or continue with social media!',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Email Address',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: userName,
                validator: validate.validateUsername,
                keyboardType: TextInputType.text,
                // onSaved: (val) {
                //   if (val!.isNotEmpty) {
                //     signCredential.username = val;
                //   }
                // },
                decoration: const InputDecoration(
                    constraints: BoxConstraints.expand(
                        width: double.infinity, height: 40),
                    hintText: 'xyz@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      borderSide: BorderSide(width: 0.5),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: password,
                validator: validate.password,
                obscureText: true,
                keyboardType: TextInputType.text,
                // onSaved: (val) {
                //   if (val!.isNotEmpty) {
                //     signCredential.password = val;
                //   }
                // },
                decoration: const InputDecoration(
                  constraints:
                      BoxConstraints.expand(width: double.infinity, height: 40),
                  hintText: ('******'),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(17)),
                    borderSide: BorderSide(width: 1.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  var form = formKeySignin.currentState;
                  if (form!.validate()) {
                    /// form.save();
                    handleSubmit();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                ),
                child: const Text(
                  'Tombol Saya',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                ),
                child: const Text(
                  'Tombol Saya',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: const Text(
                      'New User? Create Account',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
