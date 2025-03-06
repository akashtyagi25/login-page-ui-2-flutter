import 'package:flutter/material.dart';
class mytextfield extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscuretext;

  const mytextfield(
    {
      super.key,
      required this.controller,
        required this.hintText,
        required this.obscuretext
    }
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal:25),
                child: TextField(
                  controller: controller,
                 
                  obscureText: obscuretext,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade700)
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.grey.shade500)
                  ),
                ),
              );

  }

}