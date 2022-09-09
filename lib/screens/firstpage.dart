import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vybaze_music/routes/app_route_names.dart';

class FirstPage  extends StatelessWidget{
  const FirstPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/img/mainBackground.png"),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 360),
          child: Column(
            children: [
              const Text(
                  "VYBAZE MUSIC",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 70),
              const Text(
                "Discover millions of music from around the world",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 65,
                width: 327,
                child: TextButton(
                    onPressed: (){
                      Get.toNamed(loginscreen);
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 4.0,
                          style: BorderStyle.solid
                        )
                      )
                    ),
                    child: const Text("Login with email", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white,fontFamily: 'OpenSansBold'),)
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: 65,
                width: 327,
                child: ElevatedButton(
                    onPressed: (){
                      Get.toNamed(registerscreen);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    child: const Text("Register", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white,fontFamily: 'OpenSansBold'),)
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: 65,
                width: 327,
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("lib/img/googlepng.png", width: 30, height: 30,),
                        const SizedBox(width: 20,),
                        const Text("Continue with google", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'OpenSansBold'),),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}