import 'package:flutter/material.dart';

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