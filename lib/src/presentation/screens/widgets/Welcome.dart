import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

import '../welcome_screen.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
        height: size*0.6,
        width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Image.asset('assets/images/set_padel.png'),
            ),
          const Text("Set Padel House", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Color.fromARGB(204, 4, 29, 74)),),
          const SizedBox(height: 50,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_rounded),
              Text("San Miguel, Tribulato 540", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Color.fromARGB(204, 4, 29, 74)),),
          ],)
        ],
      ),
      ),


      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        height: size*0.4,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(144, 203, 1, 52),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, //vertical
            crossAxisAlignment: CrossAxisAlignment.center, // horizontal
            children: [
              const Text("Welcome", style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800),),
              const SizedBox(height: 80, width: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(text: "Sign in",  color: Colors.black, textcolor: Colors.white, onTap: () { Navigator.pushNamed(context, "/login"); },),
                  const SizedBox(width: 40,),
                  CustomButton(text: "Sing up", color: Colors.white, textcolor: Colors.black, onTap: () { Navigator.pushNamed(context, "/register"); },),
                ],
              )
            ],
          )
        )
      ],
    );
  }
}