import 'package:flutter/material.dart';
class squaretile extends StatelessWidget{
  final String imagepath;
  const squaretile({super.key, required this.imagepath});

  @override
  Widget build(BuildContext context) {
   return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey.shade200
    ),
        child: Image.asset(imagepath,
        height: 40,
        ),
   );
  }

}