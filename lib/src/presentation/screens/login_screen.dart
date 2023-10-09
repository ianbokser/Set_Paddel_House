
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(180, 223, 71, 0.8), 
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(180, 223, 71, 0.8),//const Color.fromARGB(204, 8, 101, 188),
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0), 
            bottomRight: Radius.circular(20.0),
            
          ),
        ),
        leading: IconButton(
          onPressed: () { Navigator.pushNamed(context, "/welcome"); }, 
          icon: const Icon(Icons.arrow_back_rounded, 
          color: Colors.white, 
          size: 30,
          ), 
        ),
        actions: [
          TextButton(
          onPressed: (){ Navigator.pushNamed(context, "/register"); },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white 
          ), 
          child: const Text("Register"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Sign In", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40, color: Colors.black),), // Color de texto en negro
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Padel - Pistas profesionales indoor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),), // Color de texto en negro
            ),
            const SizedBox(height: 20,),
            Container(
              height: size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0), 
                  topRight: Radius.circular(20.0),
                ),
                boxShadow: <BoxShadow> [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                  )
                ]
              ),
              child: Column(
                children: [
                  Form(
                    child: Padding(
                    padding: 
                    EdgeInsets.symmetric(vertical: size.height * 0.1, horizontal: size.width * 0.02),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const _TextFormFile(Text: 'Username',),
                        const SizedBox(height: 15,),
                        const _TextFormFile(Text: 'Password',),
                        const SizedBox(height: 20,),
                        InkWell(
                          onTap:() { 

                          }, 
                          child: const Text("Forgot Password?", 
                          style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 80,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          height: 55,
                          width: double.infinity,
                          child: ElevatedButton(onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                            ),
                            child: const Text("Sign In",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TextFormFile extends StatelessWidget {
  final String Text;
  const _TextFormFile({
    super.key,
    required this.Text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: Text,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 192, 192, 192)
      ),
    );
  }
}
