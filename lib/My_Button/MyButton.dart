import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton({super.key,
  required this.title,
  this.color=Colors.black,
  required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle, 
                border: Border.all(
                  width: 5,
                  color: Color.fromARGB(255, 243, 240, 242),
                  style: BorderStyle.solid,
                ),
            
                color:color,
            ),
            child:  Center(
                child: Text(
              title,
              style: const TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
}
