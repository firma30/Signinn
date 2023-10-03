import 'package:flutter/material.dart';
import 'package:signin/signIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => MyApp()),
                    );
                  },
                ),

                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Register Account',
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
                  height: 10,
                ),
                const Text(
                  'Masukkan Nama',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    constraints: BoxConstraints.expand(
                        width: double.infinity, height: 40),
                    hintText: 'xxxxxxxx',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      borderSide: BorderSide(width: 0.5),
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 16.0, // Atur ukuran huruf teks input
                    // Anda dapat menambahkan properti gaya lainnya sesuai kebutuhan
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Masukkan Alamat',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    constraints: BoxConstraints.expand(
                        width: double.infinity, height: 40),
                    hintText: 'xxxxxxxx',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      borderSide: BorderSide(width: 0.5),
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 16.0, // Atur ukuran huruf teks input
                    // Anda dapat menambahkan properti gaya lainnya sesuai kebutuhan
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Masukkan Tanggal Lahir',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    constraints: BoxConstraints.expand(
                        width: double.infinity, height: 40),
                    hintText: 'xxxxxxxx',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      borderSide: BorderSide(width: 0.5),
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 16.0, // Atur ukuran huruf teks input
                    // Anda dapat menambahkan properti gaya lainnya sesuai kebutuhan
                  ),
                ),

                const SizedBox(
                  height: 10,
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
                  controller: null,
                  keyboardType: TextInputType.text,
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
                  height: 10,
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
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    constraints: BoxConstraints.expand(
                        width: double.infinity, height: 40),
                    hintText: ('******'),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      borderSide: BorderSide(width: 1.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(double.infinity, 45),
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
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    minimumSize: const Size(double.infinity, 45),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
