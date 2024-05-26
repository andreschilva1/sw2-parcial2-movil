import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final IconData icono;
  final TextInputType type;
  final bool pass;
  final String texto;
  final String errorMessagge;
  final TextEditingController controller;

  const TextFieldCustom(
      {Key? key,
      required this.icono,
      required this.type,
      this.pass = false,
      required this.texto,
      required this.errorMessagge,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      obscureText: pass,
      decoration: InputDecoration(
        hintText: texto,
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(icono, color: Colors.grey),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffEBDCFA)),
            borderRadius: BorderRadius.circular(50)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffEBDCFA)),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      controller: controller,
      onChanged: (value) => value,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessagge;
        }
        return null;
      },
    );
  }
}
