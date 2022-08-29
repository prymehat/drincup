import 'package:drincup/utils/colors.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({
    super.key, 
    required this.hintText, 
    this.isPass = false, 
    required this.textEditingController, 
    required this.textInputType});

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        );
    return TextField(
      
      style: TextStyle(
        color: maincolor,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),      
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: inputBorder, 
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
        fillColor: Color.fromRGBO(255, 138, 0, .17), 
      ),
      keyboardType: textInputType,
      obscureText: isPass,

    );
  }
}
