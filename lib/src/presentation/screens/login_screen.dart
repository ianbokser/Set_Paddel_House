
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    final _formKey = GlobalKey<FormState>();
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
            const SizedBox(height: 35,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Sign In", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40, color: Colors.black),), // Color de texto en negro
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Padel - Pistas profesionales indoor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),), // Color de texto en negro
            ),
            const SizedBox(height: 30,),
            Container(
              height: size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0), 
                  topRight: Radius.circular(30.0),
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
                    key: _formKey,
                    child: Padding(
                    padding: 
                    EdgeInsets.symmetric(vertical: size.height * 0.1, horizontal: size.width * 0.02),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _email(email),
                        const SizedBox(height: 20,),
                        _password(password),
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
                          child: ElevatedButton(onPressed: () {
                            if (_formKey.currentState!.validate()){ 
                              print("INICIO DE SESION EXITOSO");
                              print(email.text);
                              print(password.text);
                            }
                          },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                            ),
                            child: const Text("Sign In",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _googleButton(),
                const SizedBox(height: 10,),
                _facebookButton(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

  Container _facebookButton() {
    return Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          ), 
                  child: Row(
                    children: [
                      Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/480px-Facebook_f_logo_%282019%29.svg.png",
                        width: 40,
                        height: 40,
                      ),
                      const Spacer(),
                      const Text(
                        "Continue with facebook",
                        style: TextStyle(color: Colors.black),
                        ),
                      const Spacer(),
                      IconButton(
                      onPressed: (){}, 
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }

  Container _googleButton() {
    return Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          ), 
                  child: Row(
                    children: [
                      Image.network(
                        "https://rotulosmatesanz.com/wp-content/uploads/2017/09/2000px-Google_G_Logo.svg_.png",
                        width: 40,
                        height: 40,
                      ),
                      const Spacer(),
                      const Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.black),
                        ),
                      const Spacer(),
                      IconButton(
                      onPressed: (){}, 
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }

  TextFormField _password(TextEditingController val) {
    return TextFormField(
      controller: val,
    validator: (value) {
      if (value!.isEmpty) {
        return "este campo es obligatorio";
      }
    },
    decoration: InputDecoration(
      hintText: "Password",
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
      fillColor: Colors.white60
    ),
  );
  }
}

  TextFormField _email(TextEditingController val) {
    return TextFormField(
      controller: val,
    validator: (value) {
      if (value!.isEmpty) {
        return "este campo es obligatorio";
      }
    },
    decoration: InputDecoration(
      hintText: "Username",
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
      fillColor: Colors.white60
    ),
  );
}
