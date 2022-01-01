import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final marginTop = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, marginTop, 0.0, 0.0),
                  child: const Text(
                    'Anwarul',
                    style:
                    TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, marginTop + 50.0 , 0.0, 0.0),
                  child: const Text(
                    'Amin',
                    style:
                    TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(155.0, marginTop + 22.0, 0.0, 0.0),
                  child: const Text(
                    '.',
                    style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent),
                  ),
                ),
              ],
            ),
            Container(
              padding:
              const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Column(children: <Widget>[
                _buildTextField(label: 'NAMA LENGKAP', obscure: false),
                const SizedBox(height: 20.0),
                _buildTextField(label: 'EMAIL', obscure: false),
                const SizedBox(height: 20.0),
                _buildTextField(label: 'PASSWORD', obscure: true),
                const SizedBox(height: 20.0),
                _buildTextField(label: 'KONFIRMASI PASSWORD', obscure: true),
                const SizedBox(height: 40.0),
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: const Text('DAFTAR',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ),
                const SizedBox(height: 30.0),
                const Center(
                  child: Text('Anwarul Amin Apps - v1.0.0', style:
                  TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  )),
                )
              ]),
            )
          ]),
        ));
  }
}


Widget _buildTextField({required String label, required bool obscure}){
  return TextField(
    obscureText: obscure,
    decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.grey),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent))),
  );
}
