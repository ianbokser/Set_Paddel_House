import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/presentation/screens/widgets/Welcome.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen ({super.key});
  

  
  @override
  Widget build(BuildContext context) {
    // toma el total de cualquier pantalla
    final size = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomBody(size: size),
      
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return WelcomeWidget(size: size);
  }
}



class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textcolor;
  final Function()? onTap;
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.textcolor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(color),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            )
          )
        ),
        child: Text(text, style: TextStyle(color: textcolor, fontWeight: FontWeight.w400),), 
       ),
    );
  }
}